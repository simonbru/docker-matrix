#!/bin/sh

mkdir -p /tmp/uploads
exec dumb-init "${@}"
