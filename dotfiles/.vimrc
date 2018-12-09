set nocompatible
set encoding=utf8
set number
syntax on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on

let mapleader=","

" move current line down
nnoremap - ddp
" move current line up
nnoremap _ ddkkp
" uppercase current word
inoremap <c-u> <esc>viwU`^
" uppercase current word
nnoremap <c-u> viwU`^
" edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" move to beginning of line
nnoremap H ^
" move to end of line
nnoremap L $
" quotes around visual selection
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>`>l
" normal mode
inoremap jk <esc>
" unbind esc
inoremap <esc> <nop>

set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

colorscheme base16-default-dark
