#!/bin/sh

command=$1
shift

case "$command" in
    daemon)
        gnome-break-timer-daemon $@
        ;;
    
    settings)
        mkdir -p "${XDG_CONFIG_HOME}/autostart"
        cp -f "${SNAP}/usr/etc/xdg/autostart/org.gnome.BreakTimer.desktop" "${XDG_CONFIG_HOME}/autostart"
        gnome-break-timer-settings $@
        ;;
esac

