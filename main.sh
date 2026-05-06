#!/usr/bin/env bash
set -e

python3 src/main.py
python3 -m http.server 8888 --directory docs --bind 127.0.0.1


# python3 src/main.py
# cd public && python3 -m http.server 8888
