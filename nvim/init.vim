" Standard whatever stuff
filetype plugin indent on
syntax on
set nocompatible
set number
set relativenumber
set cursorline
color ron

" Set <leader> and <localleader> to <Space>
let mapleader = ","
let maplocalleader = ","

""" PLUG BEGIN
" Vim-plug (plugin manager)
" https://github.com/junegunn/vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" Vim-tex (plugin for LaTeX)
" https://github.com/lervag/vimtex#quick-start
Plug 'lervag/vimtex'

" Initialize plugin system (also from vim-plug)
call plug#end()
""" PLUG OVER

" Guides for navigating, thanks Luke
noremap <leader><leader> <Esc>/<++><Enter>c4l
inoremap <leader><leader> <Esc>/<++><Enter>c4l
vnoremap <leader><leader> <Esc>/<++><Enter>c4l

" Use omni-completion with vimtex (enabled by default)
let g:vimtex_complete_enabled = 1

" LaTeX macros
autocmd FileType tex noremap <leader>be i\begin{}<Enter><++><Enter>\end{<++>}<Esc>2k$i
autocmd FileType tex noremap <leader>bm i\[<Enter><Enter>\]<Esc>kA<Tab>

" Python3 macro
autocmd FileType python noremap <F4> :w<Enter>:!python3 %<Enter>

" Java macro
" compile everything in the current directory
autocmd FileType java noremap <F4> :w<Enter>:!javac *.java<Enter>
" run the current file's main
autocmd FileType java noremap <F5> :!java %<Enter>
" run the directory's Main class
autocmd FileType java noremap <F6> :!java Main<Enter>

"set completeopt="menuone,noinsert,preview"
autocmd CompleteDone * pclose
set splitright
