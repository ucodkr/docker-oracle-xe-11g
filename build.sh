#!/bin/bash
IMAGE=ucodkr/oracle11g
VERSION=1.0.0
NAME=oracle11g
VOLUMN=/disk1/docker/nexus

docker build .  -t ${IMAGE}:${VERSION}
docker tag ${IMAGE}:${VERSION} ${IMAGE}:latest


docker push ${IMAGE}:${VERSION}
docker push ${IMAGE}:latest