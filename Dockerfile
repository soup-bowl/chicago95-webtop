FROM lscr.io/linuxserver/webtop:ubuntu-xfce

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
	&& apt-get install -y --no-install-recommends git ca-certificates fontconfig \
	&& git clone --depth=1 https://github.com/grassmunk/Chicago95 /tmp/Chicago95 \
	&& mkdir -p /usr/share/themes /usr/share/icons /usr/share/sounds /usr/share/wallpapers /usr/share/fonts /etc/xdg/xfce4/xfconf/xfce-perchannel-xml /usr/share/xfce4/terminal/colorschemes /etc/xdg/xfce4/terminal \
	&& cp -a /tmp/Chicago95/Theme/Chicago95 /usr/share/themes/Chicago95 || true \
	&& cp -a /tmp/Chicago95/Icons/Chicago95 /usr/share/icons/Chicago95 || true \
	&& cp -a /tmp/Chicago95/Cursors/* /usr/share/icons/ || true \
	&& cp -a /tmp/Chicago95/sounds/Chicago95 /usr/share/sounds/Chicago95 || true \
	&& cp -a /tmp/Chicago95/Fonts/* /usr/share/fonts/ || true \
	&& cp -a /tmp/Chicago95/Extras/Chicago95.theme /usr/share/xfce4/terminal/colorschemes/ || true \
	&& cp -a /tmp/Chicago95/Extras/terminalrc /etc/xdg/xfce4/terminal/terminalrc || true \
	&& rm -rf /tmp/Chicago95 \
	&& fc-cache -f -v || true \
	&& apt-get purge -y --auto-remove git \
	&& rm -rf /var/lib/apt/lists/*

COPY xfce /config/.config/xfce4/xfconf/xfce-perchannel-xml
