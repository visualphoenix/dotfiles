#!/bin/bash
DIR=$(cd `dirname $0` ; pwd)

function fullpath() {
  local PATH="$(cd `dirname $1` ; pwd)/$(basename $1)"
  echo $PATH
}

function softlink() {
  SOURCE=$1
  DEST=$2
  if [ -h $DEST ] ; then
    rm -rf $DEST
  fi
  ln -s $SOURCE $DEST
}

read -p "Enter your email address: " EMAIL
softlink "$DIR/bash_aliases" "$(fullpath ~/.bash_aliases)"
softlink "$DIR/vim" "$(fullpath ~/.vim)"
softlink "$DIR/vim/vimrc" "$(fullpath ~/.vimrc)"

GITCONFIG=$(fullpath ~/.gitconfig)
if [ -e "$GITCONFIG" ] ; then
  rm -rf $GITCONFIG
fi
cat $DIR/gitconfig | sed "s^@EMAIL@^$EMAIL^g" > $GITCONFIG

