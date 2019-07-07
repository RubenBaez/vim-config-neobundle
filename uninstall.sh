#!/bin/bash

if [ $(id -u) -eq 0 ]; then
  echo "You should not install this for the root account.";
  exit 1
fi

export CURRENT=${HOME}/Config

if [ -d ~/.vim ]; then
  rm -rf ~/.vim;
  rm ~/.vimrc;
fi

unlink ${HOME}/.gitconfig
unlink ${HOME}/.gitignore_global
unlink ${HOME}/.bash_profile
unlink ${HOME}/.tmux.conf
unlink ${HOME}/.nanorc
