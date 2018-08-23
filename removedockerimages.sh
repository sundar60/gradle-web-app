#!/bin/bash
# Stop all containers
containers=`sudo docker ps -a -q`
if [ -n "$containers" ] ; then
        sudo docker stop $containers
fi
# Delete all containers
containers=`docker ps -a -q`
if [ -n "$containers" ]; then
        sudo docker rm -f -v $containers
fi
# Delete all images
images=`sudo docker images -q -a`
if [ -n "$images" ]; then
        sudo docker rmi -f $images
fi
