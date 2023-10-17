#! /usr/bin/env bash

ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.local/share/icons"
  mkdir -p "${DEST_DIR}"
fi

rm -rf $DEST_DIR/Graphite-light-cursors
rm -rf $DEST_DIR/Graphite-dark-cursors
rm -rf $DEST_DIR/Graphite-light-nord-cursors
rm -rf $DEST_DIR/Graphite-dark-nord-cursors
# no light gruv yet
rm -rf $DEST_DIR/Graphite-dark-gruv-cursors

cp -r dist-light $DEST_DIR/Graphite-light-cursors
cp -r dist-dark $DEST_DIR/Graphite-dark-cursors
cp -r dist-light-nord $DEST_DIR/Graphite-light-nord-cursors
cp -r dist-dark-nord $DEST_DIR/Graphite-dark-nord-cursors
# no light gruv yet
cp -r dist-dark-gruv $DEST_DIR/Graphite-dark-gruv-cursors
if [[ $XDG_SESSION_TYPE = "wayland" ]]
then
  echo "Add XWayland compatibility to .bash_profile?"
  select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo 'export XCURSOR_PATH=${XCURSOR_PATH}:~/.local/share/icons' >> ~/.bash_profile; break;;
        No ) break;;
    esac
done
fi

echo "Finished..."

