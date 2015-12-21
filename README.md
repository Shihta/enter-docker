# enter-docker (0.0.1) for ubuntu trusty

This is a handy tool to enter a docker container in ubuntu trusty.

## Installation

To add following items into `etc/apt/sources.list.d/shihta.list`

```
deb http://ppa.launchpad.net/shihta-kuan9/ppa/ubuntu trusty main
deb-src http://ppa.launchpad.net/shihta-kuan9/ppa/ubuntu trusty main
```

To execute following commands for add key and install

```
apt-key adv --keyserver keyserver.ubuntu.com --recv 9964B059
apt-get install enter-docker
```

## Usage

```
enter-docker CONTAINER_ID
```

## Others

This package contains 2 main files: **nsenter** and **enter-docker**.

**nsenter** is builded from util-linux 2.27.1. You can refer to [here](https://www.kernel.org/pub/linux/utils/util-linux/v2.27/) for the source.

**enter-docker** is just a script for adding some useful parameter for **nsenter**.
