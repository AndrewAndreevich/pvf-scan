#!/bin/sh
# Copy the page into the pvf_site repo (pvf.asia), folder scans/ -> https://pvf.asia/scans/
# Usage: sh tools/publish.sh [path to pvf_site]   (default: ../pvf_site), then commit and push pvf_site.
set -e
SRC=$(cd "$(dirname "$0")/.." && pwd)
DST=${1:-"$SRC/../pvf_site"}/scans
rm -rf "$DST" && mkdir -p "$DST"
cp "$SRC/index.html" "$SRC/styles.css" "$SRC/main.js" "$DST/"
cp -r "$SRC/assets" "$DST/"
echo "copied to $DST"
