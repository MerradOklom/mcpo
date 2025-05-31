#!/bin/sh
set -e

# Download config.json from CONFIG_URL
curl -L "${CONFIG_URL}" -o /app/config.json

# Run the application
exec mcpo --config /app/config.json --port 8000 --api-key "${SECRET}"
