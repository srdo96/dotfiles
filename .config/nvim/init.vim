" " " " " " " " " " " " " " " " " " "  "
"   _   _       _                      "
"  | \ | |_   _(_)_ __ ___  _ __ ___   "
"  |  \| \ \ / / | '_ ` _ \| '__/ __|  "
"  | |\  |\ V /| | | | | | | | | (__   "
"  |_| \_| \_/ |_|_| |_| |_|_|  \___|  "
"                                      "
" " " " " " " " " " " " " " " " " " "  "

let mapleader =","

" Plug-in
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'junegunn/goyo.vim'
call plug#end()

" Some basics:
	syntax on
	set number relativenumber
	set encoding=utf-8
	set mouse=a
	set title

" Copy and paste from clipboard
	vnoremap <C-c> "*y :let @+=@*<CR>
	map <C-p> "+P

" NerdTree
"	nnoremap <C-f> :NERDTreeFocus<CR>
	nnoremap <C-n> :NERDTree<CR>
	nnoremap <C-t> :NERDTreeToggle<CR>

" Goyo plugin makes text more readable when writing prose:
	map <leader>f :Goyo \| set bg=light \| set linebreak<CR>

                                 
