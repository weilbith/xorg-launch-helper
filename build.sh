#!/bin/bash

mkdir -p build
gcc src/main.c -lsystemd -o build/xorg-launch-helper