#!/bin/sh
# Power menu (Mod+P)

choice="$(printf '%s\n' Lock Logout Suspend Reboot Shutdown | rofi -dmenu -i -p 'Power')" || exit 0

case "$choice" in
    Lock) exec swaylock -f -c 000000 ;;
    Logout) exec niri msg action quit --skip-confirmation ;;
    Suspend) exec systemctl suspend ;;
    Reboot) exec systemctl reboot ;;
    Shutdown) exec systemctl poweroff ;;
esac
