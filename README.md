## rathorian/docker-freshrss

[![](https://img.shields.io/docker/pulls/rathorian/docker-freshrss)](https://hub.docker.com/r/rathorian/docker-freshrss)
[![](https://img.shields.io/docker/stars/rathorian/docker-freshrss)](https://hub.docker.com/r/rathorian/docker-freshrss)


![](https://i.goopics.net/71XpR.png)

#### What is FreshRSS?
FreshRSS is an RSS aggregator and reader. It allows you to read and follow several news websites at a glance without the need to browse from one website to another.

#### Features
- Based on Alpine Linux
- Latest release from [FreshRSS/FreshRSS](https://github.com/FreshRSS/FreshRSS)

#### Build-time variables
- **FRESHRSS_VER** : FreshRSS version

#### Environment variables
|       Variable      |       Description       | Default value |
| :-----------------: | :---------------------: | :-----------: |
| **UPLOAD_MAX_SIZE** |   maximum upload size   |      10M      |
|   **MEMORY_LIMIT**  |     php memory limit    |      128M     |
|   **CRON_PERIOD**   |  feed update frequency  |      15m      |
|       **TZ**        |         time zone       |  Europe/Paris |
|       **UID**       |    freshrss group id    |      991      |
|       **GID**       |    freshrss group id    |      991      |

#### Volumes
- **/freshrss/data**

#### Ports
- **8888** : reverse proxy!
