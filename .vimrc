set nocompatible
set nu
set relativenumber
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set nohlsearch
set incsearch
set termguicolors
set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set scrolloff=8
set signcolumn=yes
set updatetime=50
set colorcolumn=80
set isfname+=@-@
set clipboard=unnamedplus

filetype off

let mapleader=" "
nnoremap <silent> <leader>pv :Ex<CR>
vnoremap <silent> J :m '>+1<CR>gv=gv
vnoremap <silent> K :m '<-2<CR>gv=gv
nnoremap J mzJ`z
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv
xnoremap <leader>p \"_dP
nnoremap <leader>y \"+y
vnoremap <leader>y \"+y
nnoremap <leader>d \"_d
vnoremap <leader>d \"_d
inoremap <C-c> <Esc>
nnoremap Q <nop>
nnoremap <C-k> <cmd>cnext<CR>zz
nnoremap <C-j> <cmd>cprev<CR>\\
nnoremap <leader>k <cmd>lnext<CR>zz
nnoremap <leader>j <cmd>lprev<CR>zz
nnoremap <silent> <leader>s :%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <silent> <leader>x <cmd>!chmod +x %<CR>

call plug#begin()
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
set background=dark
set undodir=~/.vim/undodir

nnoremap <leader>u :UndotreeShow<CR>
