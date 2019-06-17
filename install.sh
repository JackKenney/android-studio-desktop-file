#!/bin/bash

# replace default username with current user
sed -i 's/jack/'$(whoami)'/g' AndroidStudio.desktop

# copy files
cp AndroidStudio.desktop /home/$(whoami)/.local/share/applications/
cp icon.png /home/$(whoami)/android-studio/

# make desktop file exectuable
chmod a+x /home/$(whoami)/.local/share/applications/AndroidStudio.desktop
