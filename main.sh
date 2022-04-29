#!/usr/bin/env bash
set -eEuo pipefail
PORT="${PORT:-8080}"
echo "Listening on ${PORT}..."
nc -lk -p "${PORT}" -e "./date.sh"

# You can parameterize the script you run as a function of the
# service name like this...
# SERVICE="${K_SERVICE:-pageviews}"
# nc -lk -p "${PORT}" -e "./$SERVICE.sh"
