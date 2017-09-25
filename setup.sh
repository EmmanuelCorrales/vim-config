#!/bin/bash
# Remove previous vim configuration.
rm -rf ~/.vim
rm ~/.vimrc

# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install CTRLP plugin.
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim

# Download and install NERDTREE.
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# Install vim-colors-solarized
git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized

# Create a hard symlink to user's .virmrc file.
ln -n .vimrc ~/.vimrc
