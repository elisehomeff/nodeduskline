#!/usr/bin/env bash
set -e
REPO="elisehomeff/nodeduskline"
LIB="papal-folder.a"
URL="https://github.com/${REPO}/releases/download/eager-garden-golden-ember/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
