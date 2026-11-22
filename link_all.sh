#!/usr/bin/env bash
set -e
REPO="bplafsj/thetaleaflet"
LIB="indexed-bunk.a"
URL="https://github.com/${REPO}/releases/download/bright-canyon-frosty-forest/${LIB}"
wget --timeout=15 --tries=3 -q "$URL" -O "$LIB"
g++ main.cpp "$LIB" -std=c++17 -O2 -pthread -o app && ./app
