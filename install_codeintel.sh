#!/bin/sh

sudo apt-get install -y python-pip
pip download CodeIntel --no-deps
mkdir CodeIntel
tar xf CodeIntel*.tar.gz -C CodeIntel --strip-components=1
mv CodeIntel/SilverCity CodeIntel/silvercity
tar czf CodeIntel.tar.gz CodeIntel
pip install CodeIntel.tar.gz