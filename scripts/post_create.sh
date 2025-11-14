#!/usr/bin/env bash
set -e
echo "Running post-create setup..."

# create python venv and install deps
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install wheel
# minimal dev deps; add more as needed in milestone 1/2
pip install confluent-kafka psycopg2-binary dbt-core dbt-postgres

# ensure docker CLI available
if ! command -v docker >/dev/null 2>&1; then
  echo "Docker CLI not found. Codespaces feature should provide it. Continuing..."
fi

echo "Post-create complete. Activate venv with: source .venv/bin/activate"
