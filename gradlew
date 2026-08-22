#!/bin/sh
APP_HOME=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
DIST_URL="https://services.gradle.org/distributions/gradle-8.10.2-bin.zip"
DIST_DIR="$HOME/.gradle/wrapper/dists/gradle-8.10.2-bin"
ZIP="$DIST_DIR/gradle.zip"
mkdir -p "$DIST_DIR"
if [ ! -x "$DIST_DIR/gradle-8.10.2/bin/gradle" ]; then
  if [ ! -f "$ZIP" ]; then
    curl -fsSL "$DIST_URL" -o "$ZIP"
  fi
  rm -rf "$DIST_DIR/gradle-8.10.2"
  unzip -q "$ZIP" -d "$DIST_DIR"
fi
exec "$DIST_DIR/gradle-8.10.2/bin/gradle" "$@"
