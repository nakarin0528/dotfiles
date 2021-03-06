#!/bin/sh
if [ $(uname) = "Darwin" ];then
    #   macOS
    # =========
    # install Homebrew
    sh brew/install.sh
    # install formulas
    pushd brew
    brew bundle
    popd
fi

#   neovim-plug
# ------------
if type nvim &> /dev/null; then
    # download
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    # install
    nvim +PlugInstall +qa
fi
