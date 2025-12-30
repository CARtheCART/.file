#!/usr/bin/env bash

chosen=$(printf "  \n  \n  " | wofi --dmenu)

case "$chosen" in
"  ") poweroff ;;
"  ") reboot ;;
"  ")
  swaylock -i ~/.config/sway/bg.png --fade-in 0.2 --indicator-radius 100 \
    --indicator-thickness 7 \
    --ring-clear-color DAC4C1 \
    --indicator-x-position 940 \
    --indicator-y-position 560 \
    --key-hl-color C4AEB3 \
    --ring-color 54566AE0 \
    --inside-color 1D1C2Acc \
    --text-color C4AEB3cc \
    --clock \
    --timestr="%H:%M:%S" \
    --datestr="%d %m %Y" \
    --font="monsace" \
    --indicator

  ;;
*) exit 1 ;;
esac
