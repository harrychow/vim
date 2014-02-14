" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#incubate()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

" Personal settings
set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set history=1000
set hlsearch
inoremap jk <ESC> 

set spell spelllang=en_us
