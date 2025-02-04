## This configures the C779 HDMI to CSI adapter for use.

## First, Setup /boot/config.txt ; you will need to uncomment a line
## REBOOT
wget https://raw.githubusercontent.com/steveseguin/CSI2_device_config/master/1080P50EDID.txt
v4l2-ctl --set-edid=file=1080P50EDID.txt
# https://raw.githubusercontent.com/steveseguin/CSI2_device_config/master/1080P60EDID.txt
# v4l2-ctl --set-edid=file=1080P60EDID.txt ## Only if using a RPi Compute Module, since a basic rpi lacks enough data lanes
## PLUG IN HDMI PLUG NOW
v4l2-ctl --set-dv-bt-timings query
# v4l2-ctl --log-status
v4l2-ctl --query-dv-timings
## Should show the correct resolution output of your camera
## Please note; camera's HDMI output should be in 8-bit color mode, with no more than 1080p50 set, inless using compute module 
