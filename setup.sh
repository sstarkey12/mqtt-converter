#!/bin/bash

set -e

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
    cp .env.example .env
    echo "Created .env file - please edit it with your settings"
else
    echo ".env file already exists"
fi

echo
echo "Setup complete!"
echo
echo "Next steps:"
echo "1. Edit .env file with your configuration"
echo "2. Run: docker-compose up -d"
echo "3. View logs: docker-compose logs -f"
echo
