#!/bin/bash

echo "🔧 Updating system packages..."
sudo dnf update -y
sudo dnf install -y git curl unzip zip

echo "📥 Installing NVM..."
export NVM_DIR="$HOME/.nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source "$NVM_DIR/nvm.sh"

echo "📦 Installing Node.js (LTS)..."
nvm install --lts
nvm alias default node

echo "🧪 Verifying Node & npm..."
node -v
npm -v

echo "🧰 Installing global dev tools..."
npm install -g pm2
npm install -g hardhat

echo "📁 Creating project directory..."
mkdir -p ~/onchain-project
cd ~/onchain-project

echo "🎉 Setup complete! Node.js, Hardhat, and PM2 are ready to use."
