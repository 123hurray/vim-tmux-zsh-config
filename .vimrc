set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=/home/ray/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/TagHighlight' 
Plugin 'vim-scripts/taglist.vim'
Plugin 'ervandew/supertab'
Plugin 'OmniCppComplete'

call vundle#end()            " required
set t_Co=256
set background=light
set t_ut=
colorscheme solarized
filetype plugin indent on    " required
syntax on
set nocp  
filetype plugin on  
let g:SuperTabDefaultCompletionType="context"  
set number
set hlsearch
set rnu
set autoindent
set cindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set cino=g0,:0

inoremap <Char-0x07F> <BS>
nnoremap <Char-0x07F> <BS>
set mouse=a
inoremap <Esc>[62~ <C-X><C-E>
inoremap <Esc>[63~ <C-X><C-Y>
nnoremap <Esc>[62~ <C-E>
nnoremap <Esc>[63~ <C-Y>
map t :TlistToggle

let Tlist_Show_One_File=1
let Tlist_WinWidth=40
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
set tags=tags
set tags+=./tags
set undofile                " Save undo's after file closes
set undodir=~/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
