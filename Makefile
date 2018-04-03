.PHONY: all clean

all: youtube-mp3-extractor_0.1.0_amd64.deb

youtube-mp3-extractor_0.1.0_amd64.deb: usr/local/bin/ytdl-gui usr/share/applications/ytdl-gui.desktop
	fpm -s dir -t deb -d youtube-dl -d zenity -v 0.1.0 -n youtube-mp3-extractor usr

clean:
	rm *.deb
