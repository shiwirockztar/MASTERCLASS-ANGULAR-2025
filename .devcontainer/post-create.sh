#!/usr/bin/env bash
set -euo pipefail

# Install editor tooling
sudo apt-get update
sudo apt install -y neovim


# Angular CLI global install
npm install -g @angular/cli

# Disable Angular analytics prompt in non-interactive setups
export NG_CLI_ANALYTICS=false

# Install Bun if missing
if ! command -v bun >/dev/null 2>&1; then
  curl -fsSL https://bun.sh/install | bash
  # Ensure BUN_INSTALL and PATH are persisted for future shells
  grep -q 'export BUN_INSTALL' ~/.bashrc || echo 'export BUN_INSTALL="$HOME/.bun"' >> ~/.bashrc
  grep -q 'export PATH="\$BUN_INSTALL/bin:\$PATH"' ~/.bashrc || echo 'export PATH="$BUN_INSTALL/bin:$PATH"' >> ~/.bashrc
  source ~/.bashrc
fi

# Ensure Bun is on PATH for this run
export BUN_INSTALL="${BUN_INSTALL:-$HOME/.bun}"
export PATH="$BUN_INSTALL/bin:$PATH"

# Set Bun as the default Angular package manager
# Prevent interactive autocompletion prompt by answering 'no' if asked
printf 'n\n' | ng config -g cli.packageManager bun

# Install project dependencies with Bun
(cd /workspaces/MASTERCLASS-ANGULAR-2025/CursoAngular && bun install)

echo "Devcontainer setup complete."
