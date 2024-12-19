#!/bin/bash

sudo docker run -it --device=/dev/ttyACM0 --rm --name rnsd-docker rnsd-docker
