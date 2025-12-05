# Chicago95 webtop

[XFCE Linuxserver Webtop][webtop] using [Grassmunk's Chicago95 theme][c95]. For usage instructions, see the webtop documentation, replacing references to the Docker image in this repository.

> [!WARNING]  
> I'm still messing around with this, it absolutely shouldn't be used for anything but looking at it right now.

Quick run:

```
docker run --name chicagotop -it --rm -p 3000:3000 ghcr.io/soup-bowl/chicago95-webtop:latest
```

[webtop]: https://docs.linuxserver.io/images/docker-webtop
[c95]: https://github.com/grassmunk/Chicago95