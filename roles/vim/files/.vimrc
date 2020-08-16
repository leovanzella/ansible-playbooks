call plug#begin('~/.vim/bundle')
source ~/.vim/plugins.vim
call plug#end()

syntax on

filetype plugin indent on

set background=dark
colorscheme deus

set encoding=UTF-8

set number
set relativenumber

set tabstop=2
set shiftwidth=2
set expandtab

set laststatus=2

set cursorline

set backspace=indent,eol,start

let g:NERDTreeWinSize=40

let g:flake8_show_in_gutter=1

let g:syntastic_python_python_exec = "python3"
let g:syntastic_python_checkers = ["python"]

nnoremap <Right> :bn<CR>
nnoremap <Left> :bp<CR>
nnoremap <Up> :Ag<CR>
nnoremap <Down> :Files<CR>

" close vim when nerdtree is the only window left
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
