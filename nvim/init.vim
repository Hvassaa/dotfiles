filetype plugin indent on
syntax on
set nocompatible
set number
set relativenumber
set cursorline
set noshowmode

call plug#begin('~/.local/share/nvim/plugged')

Plug 'lervag/vimtex'
Plug 'vim-airline/vim-airline'

call plug#end()

""" LaTeX
" Use omni-completion with vimtex (enabled by default)
let g:vimtex_complete_enabled = 1
" LaTeX macros
autocmd FileType tex noremap <leader>be i\begin{}<Enter><++><Enter>\end{<++>}<Esc>2k$i
autocmd FileType tex noremap <leader>bm i\[<Enter><Enter>\]<Esc>kA<Tab>

""" Python3
autocmd CompleteDone * pclose
set splitright
" Python3 macro
autocmd FileType python noremap <F4> :w<Enter>:!python3 %<Enter>

""" Java
" compile current file
autocmd FileType java noremap <F3> :w<Enter>:!javac %<Enter>
" compile everything in the current directory
autocmd FileType java noremap <F4> :w<Enter>:!javac *.java<Enter>
" run the current file's main
autocmd FileType java noremap <F5> :!java %<Enter>
" run the directory's Main class
autocmd FileType java noremap <F6> :!java Main<Enter>
" run the directory's Main class
autocmd FileType java noremap <F7> ipublic static void main(String[] args) {<CR><CR>}<ESC>kA
