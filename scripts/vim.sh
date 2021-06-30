#!/bin/bash

set -o nounset
set -o errexit

# Install packages
yay -Sy vim vim-vimproc-git neovim nodejs yarn

/bin/bash -c 'cd ~/.config/coc/extensions/ && yarn'

# Vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Post-installation script
vim -c 'CocInstall coc-clangd coc-css coc-discord coc-explorer coc-git coc-html coc-htmlhint coc-html-css-support coc-intelephense coc-json coc-just-complete coc-markdownlint coc-php-cs-fixer coc-prettier coc-python coc-sh coc-sql coc-xml coc-yaml'
