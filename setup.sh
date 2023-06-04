#!/bin/sh
if [ $(whoami) = 'root' ]; then
	echo "I can't run on root"
	exit
else 
	echo "you are not root"
fi

# Paths
DOTFILE=$HOME/.dotfile
CONFIG=$HOME/.config
NVIM=$CONFIG/nvim
NEOFETCH=$CONFIG/neofetch


echo "starting linking config files"

# zsh
echo zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
	echo "OhMyZsh needed"
	exit
fi

if [ -e "$HOME/.zshrc" ]; then
	echo "Deleting old files"
	rm -r $HOME/.zshrc
	ln -s $DOTFILE/zshrc $HOME/.zshrc
	echo "zsh config linked"
else
	ln -s $DOTFILE/zshrc $HOME/.zshrc
	echo "zsh config linked"
fi

# neovim
echo nvim
if [ -d "$NVIM" ]; then
	echo "Deleting old files"
	rm -r $NVIM
	ln -s $HOME/.dotfile/nvim $NVIM
	echo "Neovim config linked"
else
	ln -s $HOME/.dotfile/nvim $NVIM
	echo "Neovim config linked"
fi

# neofetch
echo neofetch
if [ -d "$NEOFETCH" ]; then
	echo "Deleting old files"
	rm -r $NEOFETCH
	ln -s $DOTFILE/neofetch $NEOFETCH
	echo "Neofetch config linked"
else
	ln -s $DOTFILE/neofetch $NEOFETCH
	echo "Neofetch config linked"
fi
