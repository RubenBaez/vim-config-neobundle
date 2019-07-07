#!/bin/bash

if [ $(id -u) -eq 0 ]; then
  echo "You should not install this for the root account.";
  exit 1
fi

export CURRENT=${PWD}

if [ ! -d ~/.vim ]; then
  git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
fi

if [ ! -d ${HOME}/.vim/conf ]; then
   mkdir -p ${HOME}/.vim/conf
fi

if [ -L ~/.vimrc ]; then
   unlink ~/.vimrc
fi

ln -s ${CURRENT}/vim/vimrc ~/.vim/vimrc.vim
echo source ~/.vim/vimrc.vim > ~/.vimrc
cp ${CURRENT}/vim/conf/go.vim ${HOME}/.vim/conf/go.vim;
