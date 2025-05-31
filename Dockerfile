FROM ghcr.io/open-webui/mcpo:main

WORKDIR /app

EXPOSE 8000

# Install curl to download config file
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Download config.json from CONFIG_URL and run the application
CMD ["sh", "-c", "curl -L \"${CONFIG_URL}\" -o /app/config.json && mcpo --config /app/config.json --port 8000 --api-key \"${SECRET}\""]
