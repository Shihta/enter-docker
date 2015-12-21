#!/bin/bash -x

cd ..
rm -rf tmp
mkdir tmp
tar --exclude='enter-docker/.git*' -zcf enter-docker_0.0.1.orig.tar.gz enter-docker/
cd tmp
mv ../enter-docker_0.0.1.orig.tar.gz .
tar -zxf enter-docker_0.0.1.orig.tar.gz
cd enter-docker
debuild -S -sa
cd ..
dput ppa:shihta-kuan9/ppa enter-docker_0.0.1_source.changes
