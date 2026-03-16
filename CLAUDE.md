# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

Personal developer portfolio site for dimescu.ro. Single `index.html` — plain HTML/CSS, no build step, no JavaScript, no dependencies.

## Development

Open `index.html` in a browser. No build, no server required. For live reload during development: `npx serve .` or `python3 -m http.server`.

## Deployment

Hosted on GitHub Pages with custom domain (`CNAME` → `dimescu.ro`). Push to `main` deploys automatically.

## Architecture

Everything lives in one self-contained `index.html`: markup, CSS custom properties for theming (dark palette), responsive layout. Sections: hero/bio, project cards with status badges and tech tags, writing (placeholder), footer.

CSS conventions: BEM-like flat classes (`.project-head`, `.tag-rust`, `.status-active`). Color-coded tag variants per language/tech. Mobile breakpoint at 600px.
