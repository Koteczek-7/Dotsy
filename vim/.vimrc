set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'othree/html5.vim'

call vundle#end()            " required
filetype plugin indent on    " required

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'vim-scripts/AutoComplPop'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
"Plug 'itchyny/lightline.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

au FileType c,cpp,objc,objcpp call rainbow#load()

let g:airline_theme= 'owo'
"let g:lightline = {
"	\ 'colorscheme': 'wombat',
"	\ }
set clipboard=unnamed
set laststatus=2

filetype plugin on
set omnifunc=syntaxcomplete#Complete
