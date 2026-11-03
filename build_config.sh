#!/bin/bash

cd ../zmk
source .venv/bin/activate

## Build left part
west build --build-dir build/cradio/left --pristine --board nice_nano_v2 -s $HOME/Workspace/Perso/zmk/app -- -DSHIELD=cradio_left -DZMK_CONFIG=$HOME/Workspace/Perso/zmk-config/config

## Build right part
west build --build-dir build/cradio/right --pristine --board nice_nano_v2 -s $HOME/Workspace/Perso/zmk/app -- -DSHIELD=cradio_right -DZMK_CONFIG=$HOME/Workspace/Perso/zmk-config/config

mkdir -p /tmp/build

mv build/cradio/left/zephyr/zmk.uf2 /tmp/build/cradio_left.uf2
mv build/cradio/right/zephyr/zmk.uf2 /tmp/build/cradio_right.uf2
