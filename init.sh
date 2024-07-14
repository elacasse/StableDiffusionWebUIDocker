#!/bin/bash

CONTAINER_ALREADY_STARTED="$HOME/stable-diffusion-webui/firstrun"
if [ ! -e "$CONTAINER_ALREADY_STARTED" ]; then
    sudo chown stablediffusion:stablediffusion ~/stable-diffusion-webui
    sudo chmod 755 ~/stable-diffusion-webui

    git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
    chmod 755 ~/stable-diffusion-webui/webui.sh

    touch "$CONTAINER_ALREADY_STARTED"
fi

cd ~/stable-diffusion-webui || exit
./webui.sh