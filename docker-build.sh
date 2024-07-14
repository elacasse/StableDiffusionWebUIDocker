#!/bin/bash

docker buildx build --platform linux/amd64 --push -t "ericlacasse/automatic1111_stable_diffusion_webui:base" --provenance false -f Dockerfile .