set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" lightline.vim
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }
set noshowmode	" turn off mode display at bottom
set laststatus=2

" NERDTree.vim
map <C-n> :NERDTreeToggle<CR>

" general config
set number	" turns on line number
map ; :		" makes ; act like :
noremap ;; ;	" typing ;; will act as ; used to
set cul		" highlights current line
set hlsearch	" hightlight things found with search
set incsearch	" incremental search
syntax on 
source ~/.vim/plugins/cscope_maps.vim	" cscope plugin
