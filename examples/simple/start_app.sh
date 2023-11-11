#/usr/bin/env bash

set -ex

# Run this before:
# sudo apt install portaudio19-dev python3-dev

python -m venv venv
source venv/bin/activate
pip install wheel
pip install pybind11
pip install -r requirements.txt

# generate audio
python generate.py
# play audio
play -r16k -b32 -c1 -efloating audio.raw
