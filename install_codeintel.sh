#!/bin/sh

wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
pip download CodeIntel --no-deps
mkdir CodeIntel
tar xf CodeIntel*.tar.gz -C CodeIntel --strip-components=1
mv CodeIntel/SilverCity CodeIntel/silvercity
tar czf CodeIntel.tar.gz CodeIntel
pip install CodeIntel.tar.gz