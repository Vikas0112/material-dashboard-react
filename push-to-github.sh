#!/bin/bash

# Stop script if any command fails
set -e

# Variables
REPO_URL="https://github.com/vikas0112/material-dashboard-react.git"
BRANCH="main"
COMMIT_MSG="Initial commit - Material Dashboard React"

echo "📦 Adding files..."
git add .

echo "📝 Committing..."
git commit -m "$COMMIT_MSG"

echo "🔗 Adding remote origin..."
git remote remove origin 2>/dev/null || true
git remote add origin "$REPO_URL"

echo "🌿 Setting branch to $BRANCH..."
git branch -M "$BRANCH"

echo "🚀 Pushing to GitHub..."
git push -u origin "$BRANCH"

echo "✅ Code successfully pushed to GitHub!"

