# Stage 1: Build
FROM oven/bun:1 AS builder

WORKDIR /app

COPY package*.json ./
RUN bun install --frozen-lockfile --production

COPY . .
RUN bun run build

# Stage 2: Production
FROM nginx:alpine

COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost/ || exit 1
