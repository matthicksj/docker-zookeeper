docker-zookeeper
================

Zookeeper Docker image for Fedora 20

You should probably run this image with the following command:

    docker rm zoo; docker run -p 2181:2181 --name zoo matthicksj/docker-zookeeper

This will remove any named images 'zoo' and start this as a named image
(so that you could link it later).  It also forwards port 2181 to the
host so that you can verify the container with:

    echo stat | nc localhost 2181
