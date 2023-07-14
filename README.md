# jetson-nano-aws-kinesis
Stream from Jetson Nano to AWS Kinesis Video Stream

# 參考資料
1. Start RTSP on Nano:  https://blog.csdn.net/m0_51004308/article/details/121357638

$> get install gtk-doc-tools <br/>
$> sudo apt-get install libgstreamer1.0-0 gstreamer1.0-plugins-base <br/>
$> sudo apt-get install gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly <br/>
$> sudo apt-get install gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools <br/>
$> sudo apt-get install gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio <br/>
$> sudo apt-get install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev <br/> <br/>

$> git clone git://anongit.freedesktop.org/gstreamer/gst-rtsp-server <br/>
$> cd gst-rtsp-server <br/>
$> git clone https://github.com/GStreamer/common.git <br/>
$> ./autogen.sh <br/>
$> make -j4  <br/>
$> sudo make install <br/> <br/>

$> cd examples <br/> <br/>

啟動Rtsp Server: <br/> <br/>

直接讀取CSI鏡頭 <br/>
$> ./test-launch "nvarguscamerasrc ! nvvidconv ! clockoverlay ! omxh264enc ! rtph264pay pt=96 name=pay0" --- 成功 <br/>
$> ./test-launch "(  mfw_v4lsrc device=/dev/video0 ! queue ! vpuenc codec=6 ! rtph264pay name=pay0 pt=96 )" --- 失敗 <br/> <br/>

