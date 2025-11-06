#!/bin/bash
# Convert SVG to PNG using built-in macOS tools or online service

SVG_FILE="assets/banner.svg"
PNG_FILE="assets/banner.png"

# Try using qlmanage (macOS built-in)
if command -v qlmanage &> /dev/null; then
    echo "Converting SVG to PNG using qlmanage..."
    qlmanage -t -s 1792 -o assets/ assets/banner.svg 2>/dev/null
    if [ -f assets/banner.svg.png ]; then
        mv assets/banner.svg.png assets/banner.png
        echo "PNG created successfully"
        exit 0
    fi
fi

# Try using sips (macOS built-in)
if command -v sips &> /dev/null; then
    echo "Note: sips doesn't support SVG directly"
fi

echo "No conversion tool available. Please use online converter or install ImageMagick/rsvg-convert"
echo "Or use: https://cloudconvert.com/svg-to-png"
exit 1
