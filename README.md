# chicago95-webtop

This repository builds a Docker image based on `lscr.io/linuxserver/webtop:ubuntu-xfce` with the
Chicago95 visual theme (GTK theme, window manager theme, icons, and wallpapers) installed system-wide.

Build and run (example):

```bash
docker build -t chicago95-webtop:latest .
# Run using the same ports/flags you normally use for the linuxserver/webtop image.
# Example (adjust ports and volumes as needed):
docker run --rm -it -p 3000:3000 --name webtop chicago95-webtop:latest
```

Notes:
- The Dockerfile clones https://github.com/grassmunk/Chicago95 at build time and installs themes/icons
	under `/usr/share/themes`, `/usr/share/icons` and `/usr/share/wallpapers`.
- Minimal build tools (`git`) are installed during build and removed afterwards to keep the image small.
- System-wide XFCE defaults are added under `/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/` so new user
	sessions should pick up the `Chicago95` GTK theme and `Chicago95-Icons` icon theme by default.

If you'd like, I can also:
- Add a small script to switch themes at runtime
- Add more complete XFCE config files (panel layout, fonts, wallpaper) for a closer Chicago95 experience