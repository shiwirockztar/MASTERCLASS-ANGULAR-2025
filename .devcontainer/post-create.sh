#!/usr/bin/env bash
set -euo pipefail

# Install editor tooling
sudo apt-get update
sudo apt-get install -y vim

# Angular CLI global install
npm install -g @angular/cli

# Install Bun if missing
if ! command -v bun >/dev/null 2>&1; then
  curl -fsSL https://bun.sh/install | bash
fi

# Ensure Bun is on PATH for this run
export BUN_INSTALL="${BUN_INSTALL:-$HOME/.bun}"
export PATH="$BUN_INSTALL/bin:$PATH"

# Set Bun as the default Angular package manager
ng config -g cli.packageManager bun

# Install project dependencies with Bun
(cd /workspaces/MASTERCLASS-ANGULAR-2025/CursoAngular && bun install)

echo "Devcontainer setup complete."
