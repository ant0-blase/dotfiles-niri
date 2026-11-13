#!/bin/sh
# Export the session env so xdg-desktop-portal sees niri

dbus-update-activation-environment --systemd \
    WAYLAND_DISPLAY \
    NIRI_SOCKET \
    XDG_CURRENT_DESKTOP=niri
