# Syncthing image for Docker based on Debian.

Syncthing is an application that lets you synchronize your files across multiple devices.

## Info

Image uses default port numbers.

## Warning

Example commands are executed under the root user. Change it if you need it.

## How to use

Run docker compose configuration provided in repo or run image with same parameters:

```bash
git clone https://github.com/kavolorn/Docker-Syncthing
cd Docker-Syncthing
docker-compose up -d
```

First run will create /root/Syncthing directory with Syncthing configuration. If directory exists container will use it.

Use your machine IP address to configure Syncthing via http://<host-ip>:8384/.

Copy systemd service configuration and enable it (for automatic Syncthing load on system restart):

```bash
cp syncthing.service /etc/systemd/system/
systemctl enable syncthing.service
```

Now you are able to start container in systemd:

```bash
docker-compose stop
systemctl start syncthing.service
```

## References

[OpenCV image on github](https://github.com/kavolorn/Docker-Syncthing)  
[OpenCV image on docker hub](https://hub.docker.com/r/kavolorn/syncthing/)
