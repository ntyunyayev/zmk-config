#!/bin/bash

cd ../zmk
source .venv/bin/activate

## Build left part
west build --build-dir build/cradio/left --pristine --board nice_nano_v2 -s $HOME/Workspace/zmk/app -- -DSHIELD=cradio_left -DZMK_CONFIG=$HOME/Workspace/zmk-config/config

## Build right part
west build --build-dir build/cradio/right --pristine --board nice_nano_v2 -s $HOME/Workspace/zmk/app -- -DSHIELD=cradio_right -DZMK_CONFIG=$HOME/Workspace/zmk-config/config
