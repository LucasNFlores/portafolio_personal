# Plan: Portfolio Personal - Lucas Nicolás Flores

## Contexto

Lucas necesita un portafolio web profesional construido con Astro. El diseño de referencia es un tema oscuro con acentos verdes (#00FF88 aprox) y detalles en púrpura, estilo moderno/tech. La información proviene de su CV (PDF). Se agrega una sección de "Proyectos" después del Hero que no está en el CV pero debe estar lista como componente editable.

**Reglas de diseño UI/UX (de la skill UI/UX Pro Max):**
- Contraste mínimo 4.5:1, focus states, keyboard nav
- Touch targets 44x44px mínimo
- Mobile-first, sin scroll horizontal
- Tipografía base 16px, line-height 1.5
- Spacing rhythm de 4/8px
- Animaciones 150-300ms
- SVG icons (no emojis)
- WebP/AVIF para imágenes, lazy loading

**Regla de commits:** Cada fase completada = 1 commit. Mensaje humano, sin EOF, sin mención a Claude.

---

## Estructura de Componentes

```
src/
├── layouts/
│   └── Layout.astro              # Layout base (head, meta, fonts)
├── components/
│   ├── Navbar.astro              # Navegación fija
│   ├── Hero.astro                # Sección principal con foto y bio
│   ├── Projects.astro            # Sección proyectos (placeholder editable)
│   ├── ProjectCard.astro         # Card individual de proyecto
│   ├── Experience.astro          # Trayectoria profesional
│   ├── TechStack.astro           # Stack tecnológico con iconos
│   ├── Education.astro           # Formación académica + idiomas + cursos
│   ├── Contact.astro             # Sección "Ready to Collaborate?"
│   └── Footer.astro              # Footer
├── pages/
│   └── index.astro               # Página principal (compone los componentes)
└── styles/
    └── global.css                # Variables CSS, reset, tipografía base
```

---

## Design System

- **Paleta:** Fondo oscuro `#0a0a0f` / `#12121a`, cards `#1a1a2e`, acento primario verde `#00e87b`, acento secundario púrpura `#7b2ff7`, texto blanco `#f0f0f0`, texto secundario `#a0a0b0`
- **Tipografía:** Inter (sans-serif) desde Google Fonts, pesos 400/500/600/700
- **Bordes:** Bordes sutiles con glow verde en hover, border-radius 12px en cards
- **Spacing:** Sistema de 8px (8, 16, 24, 32, 48, 64, 96)
- **Breakpoints:** Mobile 320px, Tablet 768px, Desktop 1024px, Wide 1280px

---

## Fases de Implementación

### Fase 1: Scaffold del proyecto Astro
- `npm create astro@latest` en el directorio Landing
- Instalar Tailwind CSS como integración de Astro
- Configurar estructura de carpetas
- Crear `Layout.astro` con meta tags, Google Fonts (Inter), variables CSS globales
- Crear `global.css` con custom properties del design system, reset básico
- Crear `index.astro` vacío con el Layout
- **Commit:** `setup astro project with tailwind and base layout`

### Fase 2: Navbar
- Crear `Navbar.astro` con links: Experiencia, Skills, Educación, Contacto
- Logo/nombre "LNFDEV" a la izquierda
- Botón "Contacto" destacado con estilo verde
- Sticky top, fondo semi-transparente con backdrop-blur
- Responsive: menú hamburguesa en mobile
- **Commit:** `add responsive navbar component`

### Fase 3: Hero
- Crear `Hero.astro`
- Layout: texto a la izquierda, foto a la derecha (como en el diseño)
- Nombre "Lucas Nicolás Flores" con "Flores" en verde
- Subtítulo "Desarrollador de Software"
- Párrafo de perfil del CV
- Botones CTA: "Read more" y flecha
- Borde decorativo verde alrededor de la foto
- **Commit:** `add hero section with profile info`

### Fase 4: Projects (placeholder)
- Crear `Projects.astro` como contenedor de la sección
- Crear `ProjectCard.astro` como componente reutilizable con props:
  - `title`, `description`, `tags[]`, `image`, `liveUrl`, `repoUrl`
- Diseño de cards con hover effects (glow verde)
- 2-3 cards de ejemplo con datos placeholder
- Grid responsive: 1 col mobile, 2 cols tablet, 3 cols desktop
- **Commit:** `add projects section with reusable card component`

### Fase 5: Experience (Professional Journey)
- Crear `Experience.astro`
- Timeline vertical con las 2 experiencias del CV:
  - Silicon I+D+I (2023 - Presente)
  - Polo Tic Misiones (2022 - 2023)
- Cada entrada con: período, título, empresa, descripción, bullets de logros
- Iconos/badges para tecnologías mencionadas
- **Commit:** `add professional experience timeline section`

### Fase 6: Tech Stack
- Crear `TechStack.astro`
- 4 categorías del CV: Frontend, Backend, BI & Data, Workflow
- Cada categoría con iconos de las tecnologías
- Grid de cards con categorías
- Iconos SVG o devicons para cada tecnología
- **Commit:** `add tech stack section with categorized skills`

### Fase 7: Education + Languages
- Crear `Education.astro`
- Formación académica:
  - Licenciatura en Ciberdefensa (2026 - Presente)
  - Técnico Superior en Desarrollo de Software (2025 - Presente)
- Cursos/certificaciones como badges o lista
- Idiomas con indicador visual de nivel (Español nativo, Inglés conversacional)
- **Commit:** `add education, courses and languages section`

### Fase 8: Contact + Footer
- Crear `Contact.astro` - sección "Ready to Collaborate?"
  - Texto invitando a colaborar
  - Email, ubicación
  - Formulario simple (nombre, email, mensaje) - solo visual, sin backend
  - Links a LinkedIn
- Crear `Footer.astro` con copyright y links sociales
- **Commit:** `add contact section and footer`

### Fase 9: Polish final
- Smooth scroll para los anchor links del navbar
- Animaciones de entrada (fade-in on scroll) con IntersectionObserver
- Verificar responsive en todos los breakpoints
- Verificar accesibilidad: contraste, focus states, alt texts, semantic HTML
- **Commit:** `add scroll animations and final polish`

---

## Verificación

1. `npm run dev` y revisar cada sección en el navegador
2. Verificar responsive: mobile (375px), tablet (768px), desktop (1280px)
3. Verificar que `ProjectCard.astro` es fácil de editar (props claras, datos separados)
4. Lighthouse check: accesibilidad, performance, SEO
5. Verificar todos los links del navbar hacen scroll correcto
6. Verificar contraste de texto cumple WCAG 4.5:1

---

## Datos del CV para usar

**Info personal:**
- Nombre: Lucas Nicolás Flores
- Título: Desarrollador de Software
- Email: lucasnicolasflores@gmail.com
- Tel: +54 9 3764729432
- Ubicación: Posadas, Misiones, Argentina
- LinkedIn: linkedin.com/in/lucas-nicolas-flores-software-developer/

**Experiencia:**
1. Silicon I+D+I — Asesor y desarrollador web (09/2023 – Presente)
2. Polo Tic Misiones — Data Analyst & Operations Developer (01/2022 – 10/2023)

**Skills:**
- Frontend: React.js, Astro.js, JavaScript, HTML5, CSS, Tailwind CSS, Three.js
- Backend: PHP, Laravel, Python, MySQL, PostgreSQL, ExpressJs, Firebase
- BI: Power BI, Data Studio, SQL
- Tools: Git, GitHub, Jira, Trello, Scrum, Figma
- Mobile: Kotlin
- Soft: Liderazgo, Mentoría, Trabajo en equipo, Adaptabilidad, Comunicación efectiva

**Educación:**
- Licenciatura en Ciberdefensa — UNDEF (02/2026 – Presente)
- Técnico Superior en Desarrollo de Software — Instituto Superior Roque Gonzales (01/2025 – Presente)

**Cursos:** React Basics, Data Science Foundations, Version Control, Web Development, Intermediate SQL, Agile/Scrum

**Idiomas:** Español (Nativo), Inglés (Conversacional)
