#!/usr/bin/env bash
# Regenerates profile/assets/*.png from the HTML sources in this directory.
#
# The banner/work/pipeline graphics are rendered with headless Chrome so they use the
# same fonts, colors and imagery as webdevs.net itself (Anton + Plus Jakarta Sans,
# primary #cf5230, secondary #CAC18B, black background).
#
# Usage: ./assets-src/build.sh   (run from the repo root)

set -euo pipefail

SRC="assets-src"
OUT="profile/assets"
CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"

mkdir -p "$SRC/fonts" "$OUT"

# Fonts are fetched rather than committed (both are OFL-licensed Google Fonts).
[ -f "$SRC/fonts/Anton.ttf" ] || curl -sfo "$SRC/fonts/Anton.ttf" \
  "https://fonts.gstatic.com/s/anton/v27/1Ptgg87LROyAm0K0.ttf"
[ -f "$SRC/fonts/Jakarta.ttf" ] || curl -sfo "$SRC/fonts/Jakarta.ttf" \
  "https://fonts.gstatic.com/s/plusjakartasans/v12/LDIbaomQNQcsA88c7O9yZ4KMCoOg4IA6-91aHEjcWuA_KUnNSg.ttf"

shot() { # shot <name> <width> <height>
  "$CHROME" --headless --disable-gpu --hide-scrollbars \
    --force-device-scale-factor=2 --window-size="$2,$3" \
    --virtual-time-budget=5000 \
    --screenshot="$OUT/$1.png" "$SRC/$1.html" >/dev/null 2>&1
  echo "rendered $OUT/$1.png (${2}x${3} @2x)"
}

shot banner 1280 440
shot work   1280 486
shot pipeline 1280 306
