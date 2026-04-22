#!/bin/bash
# ─────────────────────────────────────────────────────────────
# Travel Planners — GitHub Repo Setup Script
# ─────────────────────────────────────────────────────────────
# Run this script once from the travel-planners/ folder to
# initialize git, commit your files, and prepare for pushing.
#
# Usage:
#   chmod +x setup-repo.sh
#   ./setup-repo.sh
# ─────────────────────────────────────────────────────────────

set -e  # exit on any error

echo "🌍 Setting up your Travel Planners repo..."
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Install from https://git-scm.com/"
    exit 1
fi

# Initialize git if not already initialized
if [ ! -d .git ]; then
    git init
    echo "✅ Initialized new git repo"
else
    echo "ℹ️  Git repo already exists, skipping init"
fi

# Set main as default branch
git branch -M main 2>/dev/null || true

# Stage all files
git add .
echo "✅ Staged all files"

# First commit
if ! git rev-parse HEAD &> /dev/null; then
    git commit -m "Initial commit: Hawaii 2026 trip planner"
    echo "✅ Created initial commit"
else
    echo "ℹ️  Repo already has commits, skipping initial commit"
    echo "   To commit current changes, run:"
    echo "   git commit -am \"your message\""
fi

echo ""
echo "──────────────────────────────────────────────"
echo "🎉 Local repo is ready! Next steps:"
echo "──────────────────────────────────────────────"
echo ""
echo "1. Create a new repo on GitHub:"
echo "   → https://github.com/new"
echo "   → Name it: travel-planners"
echo "   → DON'T initialize with README (we have one)"
echo "   → Click Create repository"
echo ""
echo "2. Connect and push (replace YOUR_USERNAME):"
echo ""
echo "   git remote add origin https://github.com/YOUR_USERNAME/travel-planners.git"
echo "   git push -u origin main"
echo ""
echo "3. Enable GitHub Pages:"
echo "   → Repo Settings → Pages"
echo "   → Source: Deploy from a branch"
echo "   → Branch: main / root"
echo "   → Save"
echo ""
echo "4. Your Hawaii planner will be live at:"
echo "   https://YOUR_USERNAME.github.io/travel-planners/trips/hawaii-2026/"
echo ""
echo "🌴 Mahalo!"
