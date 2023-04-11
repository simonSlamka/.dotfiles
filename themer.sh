#!/bin/bash

themes=$(wal --theme | grep -v "themes")
themes=$(echo "$themes" | grep "^ - sexy")
themes=$(echo "$themes" | sed 's/^ - //')

hr=$(date +%H)

if [ $((hr % 6)) -eq 0 ]; then
    wal -i wallpapers/
else
    randTheme=$(echo "$themes" | shuf -n 1)

    wal --theme "$random_theme"
fi
