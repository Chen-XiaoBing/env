#!/bin/bash

# Install common plugins.
apt-get install -y --reinstall --allow-downgrades  build-essential libevent-dev ncurses-dev vim

# Try to uninstall tmux.
ORI_TMUX_PATH=$(which tmux)
if [ -n "$ORI_TMUX_PATH" ]; then
  rm "$ORI_TMUX_PATH"
fi

# Install tmux
HOST_TMP_DIR=$(mktemp -d -p "${PWD}" | sed "s|${PWD}/||")
pushd ${HOST_TMP_DIR}
  wget https://github.com/tmux/tmux/releases/download/3.3a/tmux-3.3a.tar.gz
  tar -xzf tmux-3.3a.tar.gz
  cd tmux-3.3a
  ./configure
  make
  make install
popd
rm -r ${HOST_TMP_DIR}

# Set configurations.
cp bashrc $HOME/.bashrc
cp vimrc $HOME/.vimrc
cp tmux.conf $HOME/.tmux.conf
