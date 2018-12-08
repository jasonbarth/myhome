#!/bin/bash

MYHOME=$HOME/.myhome
echo "Using $MYHOME as bootstrap home."

mkdir -p $HOME/.vim/.undo $HOME/.vim/.backup $HOME/.vim/.swp

if [ -e "$HOME/.bash_profile" ]; then
	echo ".bash_profile exists - renaming to .bash_profile_old_myhome"
	mv "$HOME/.bash_profile" "$HOME/.bash_profile_old_myhome"
fi
ln -s "$MYHOME/dotfiles/.bash_profile" "$HOME/.bash_profile"

if [ -e "$HOME/.bashrc" ]; then
	echo ".bashrc exists - renaming to .bashrc_old_myhome"
	mv "$HOME/.bashrc" "$HOME/.bashrc_old_myhome"
fi
ln -s "$MYHOME/dotfiles/.bashrc" "$HOME/.bashrc"

if [ -e "$HOME/.vimrc" ]; then
	echo ".vimrc exists - renaming to .vimrc_old_myhome"
	mv "$HOME/.vimrc" "$HOME/.vimrc_old_myhome"
fi
ln -s "$MYHOME/dotfiles/.vimrc" "$HOME/.vimrc"
