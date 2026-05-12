#!/bin/bash

MSG=${1:-"update"}

git pull origin main --no-rebase

git add .

git commit -m "$MSG" || echo "No changes to commit"

git push origin main