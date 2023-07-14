cd /home/elvis/gst-rtsp-server/examples
./test-launch "nvarguscamerasrc ! nvvidconv ! clockoverlay ! omxh264enc ! rtph264pay pt=96 name=pay0"
