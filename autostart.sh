#!/bin/sh
#

DIR="$HOME/.config/polybar/forest/"

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -q left -c "$DIR"/config.ini &
polybar -q right -c "$DIR"/config.ini &
polybar -q center -c "$DIR"/config.ini &
