#!/bin/bash
id=$(xdotool search --name "Participant ID")
active=$(xdotool getactivewindow)
wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz
wmctrl -i -r $id -b remove,maximized_vert,maximized_horz
wmctrl -r :ACTIVE: -e 0,960,0,959,1024
wmctrl -i -r $id -e 0,0,0,959,1024
xdotool mousemove 500 500
xdotool windowactivate $id

