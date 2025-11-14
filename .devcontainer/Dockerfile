# Use the base image set by devcontainer.json; keep it minimal to speed Codespace startup.
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# install lightweight tools used by scripts
RUN apt-get update && apt-get install -y \
    curl \
    git \
    make \
    build-essential \
    python3 python3-pip python3-venv \
    jq \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
