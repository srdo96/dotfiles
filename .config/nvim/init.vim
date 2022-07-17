" " " " " " " " " " " " " " " " " " "  "
"   _   _       _                      "
"  | \ | |_   _(_)_ __ ___  _ __ ___   "
"  |  \| \ \ / / | '_ ` _ \| '__/ __|  "
"  | |\  |\ V /| | | | | | | | | (__   "
"  |_| \_| \_/ |_|_| |_| |_|_|  \___|  "
"                                      "
" " " " " " " " " " " " " " " " " " "  "

let mapleader =","

" All Plug-in
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'junegunn/goyo.vim'
Plug 'sbdchd/neoformat'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
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
	nnoremap <C-f> :NERDTreeFocus<CR>
	nnoremap <C-n> :NERDTree<CR>
	nnoremap <C-t> :NERDTreeToggle<CR>

" Goyo plugin makes text more readable when writing prose:
	map <leader>f :Goyo \| set bg=light \| set linebreak<CR>

" neoformat                                 
let g:neoformat_try_node_exe = 1

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
