"Pathogen
filetype off
call pathogen#infect('bundle/{}')
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on"syntax enable

"set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized

" Personal settings
set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set history=1000
set hlsearch

set ignorecase
set smartcase

inoremap jk <ESC> 

set spell spelllang=en_us

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>a :wqa<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""
" Tell vim to remember certain things when we exit
" " http://vim.wikia.com/wiki/VimTip80
""""""""""""""""""""""""""""""""""""""""""""""""""

" '10 : marks will be remembered for up to 10 previously edited files
" "100 : will save up to 100 lines for each register
" :20 : up to 20 lines of command-line history will be remembered
" % : saves and restores the buffer list
" n... : where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" when we reload, tell vim to restore the cursor to the saved position
augroup JumpCursorOnEdit
 au!
 autocmd BufReadPost *
 \ if expand("<afile>:p:h") !=? $TEMP |
 \ if line("'\"") > 1 && line("'\"") <= line("$") |
 \ let JumpCursorOnEdit_foo = line("'\"") |
 \ let b:doopenfold = 1 |
 \ if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
 \ let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
 \ let b:doopenfold = 2 |
 \ endif |
 \ exe JumpCursorOnEdit_foo |
 \ endif |
 \ endif
 " Need to postpone using "zv" until after reading the modelines.
 autocmd BufWinEnter *
 \ if exists("b:doopenfold") |
 \ exe "normal zv" |
 \ if(b:doopenfold > 1) |
 \ exe "+".1 |
 \ endif |
 \ unlet b:doopenfold |
 \ endif


