#!/usr/bin/env bash

set -eEuo pipefail

HEAD="$(cat <<EOF
HTTP/1.1 200 OK
Connection: keep-alive\r\n\r\n
gcloud alpha storage ls
EOF
)"

echo -en "$HEAD"
date
