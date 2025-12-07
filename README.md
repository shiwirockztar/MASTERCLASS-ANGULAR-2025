# MASTERCLASS-ANGULAR-2025

## Descripción

Este proyecto está basado en el video del curso:

**Angular curso de 0 a EXPERTO 2025**

Gentleman Programming  
> [!NOTE]
> https://www.youtube.com/watch?v=R1QePsia5xk

### Propósito

Este proyecto me sirve para actualizar mis conocimientos en Angular y aplicar los conceptos enseñados en el curso, basado en la nueva documentacion.

> [!TIP]
> https://angular.dev

!! esta ya no mas!!
> [!WARNING]
> https://v17.angular.io/start

## Configuración Inicial

### Instalación de Angular CLI

Primero, instalar Angular CLI globalmente:

```bash
npm install -g @angular/cli

# Verificar que Angular CLI se instaló correctamente
ng version
```

### Instalación de Bun (min 58:26)

A partir del minuto 58:26 del curso, se comienza instalando **Bun**, un gestor de paquetes y bundler que está reemplazando a Node.

Instalar Bun:

```bash
curl -fsSL https://bun.sh/install | bash
```

Recargar la terminal para que Bun quede disponible en la sesión actual:

```bash
source ~/.bashrc
```

Verificar la instalación de Bun:

```bash
bun --version
```

Configurar Bun como gestor de paquetes por defecto en Angular CLI:

```bash
ng config -g cli.packageManager bun
```

Este comando deja Bun como gestor de paquetes predeterminado para los proyectos de Angular.

Dentro del proyecto, instalar dependencias con Bun:

```bash
bun install
```

> [!NOTE]
> Si quieres dejar de usar Bun en el proyecto, elimina `bun.lock` y vuelve a instalar dependencias con tu gestor preferido.

### Crear nuevo proyecto Angular

Para crear un nuevo proyecto Angular, ejecutar:

```bash
ng new CursoAngular
```

Al ejecutar este comando, se te preguntará qué sistema de hojas de estilo deseas usar. Seleccionar:

```
? Which stylesheet system would you like to use?
  CSS             [ https://developer.mozilla.org/docs/Web/CSS                     ]
  Tailwind CSS    [ https://tailwindcss.com                                        ]
❯ Sass (SCSS)     [ https://sass-lang.com/documentation/syntax#scss                ]
  Sass (Indented) [ https://sass-lang.com/documentation/syntax#the-indented-syntax ]
  Less            [ http://lesscss.org                                             ]
```

Elegir **Sass (SCSS)**.

Luego, se preguntará si deseas habilitar SSR (Server-Side Rendering) y SSG (Static Site Generation):

```
Do you want to enable Server-Side Rendering (SSR) and Static Site Generation (SSG/Prerendering)?
(y/N)
```

Responder **Y** (Yes).

cuya documentacion

> [!IMPORTANT]
> https://bun.com


<!-- 

GitHub Markdown

callouts :

[!NOTE]

[!IMPORTANT]

[!WARNING]

[!CAUTION] 

-->