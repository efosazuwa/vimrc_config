"set line number
set number

"set highlight search
set hlsearch

"call my solarized color scheme
syntax enable
colorscheme solarized

"vim plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'

Plug 'bling/vim-airline'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'tpope/vim-vinegar'

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

Plug 'tpope/vim-vinegar'
call plug#end()


"vim-airline
set laststatus=2
