#!/bin/sh

PID=$(ps -ef | grep eww | grep -v grep | grep './eww daemon' | awk '{print $2}')

if [ ! -z "${PID}" ]; then
	~/bin/eww close-all && killall eww
fi

~/bin/eww daemon
sleep 1
~/bin/eww open bar

