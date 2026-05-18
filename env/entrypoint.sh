#!/bin/bash
cd /app
python3 server.py &>/dev/null &
# setarch -R disables ASLR for the launched process (deterministic addresses)
exec setarch linux64 -R /nginx-src/build/nginx -p /app -c /app/nginx.conf
