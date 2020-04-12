#!/bin/bash
IMAGE=ucodkr/oracle11g
VERSION=latest
NAME=oracle11
VOLUME=/disk1/docker/oracle
REGISTRY=registry.dc9.kr
#docker rm -f ${NAME}
docker run -d \
	--restart unless-stopped \
	-p 1521:1521 \
	-v ${VOLUME}:/u01/app/oracle \
	--name ${NAME} \
	${REGISTRY}/${IMAGE}:${VERSION}
