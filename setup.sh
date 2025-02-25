#!/bin/bash

# Check if .env.local exists
if [ -f .env.local ]; then
    echo "Warning: .env.local already exists. Please backup and remove it first if you want to create a new one."
    exit 1
fi

# Copy .env.example to .env.local
cp .env.example .env.local

echo "Created .env.local from template."
echo "Please edit .env.local and add your API keys."
echo ""
echo "To start the application after adding your keys, run:"
echo "docker compose up app-dev --build" 