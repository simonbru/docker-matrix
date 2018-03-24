
# docker-matrix

Docker image for *synapse*, the reference homeserver implementation of [matrix].
This image is built off the official Debian package.

[matrix]: matrix.org

## How to run

    $ docker run -d -p 8448:8448 -v /matrix/data:/data jocelynthode/docker-matrix

## Version information

    $ docker exec -it CONTAINERID cat /synapse.version
    0.26.1-1

## Configuration

Default configuration path: `/data/conf/matrix-server.yaml`

The container is run as the user `matrix:matrix` with the UID/GID `991`. Make sure that this user can:

* read the configuration files, keys and certificates
* read/write in the log and `media_store` folders.

You can use the folder `/tmp/uploads` as the temporary upload folder. It is automatically created with the right permissions when starting the container.
