#!/bin/bash

echo "upgrading vim"
cp vimrc ~/.vimrc
sleep 1
cp vimrc.plug ~/.vimrc.plug
sleep 2
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo 'Done!'
