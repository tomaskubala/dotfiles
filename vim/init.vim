set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'

Plug 'airblade/vim-gitgutter'

Plug 'mattn/emmet-vim'

Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'ap/vim-css-color'
Plug 'wojciechkepka/vim-github-dark'
call plug#end()

set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set exrc
"set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
"set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
"set colorcolumn=80
"set signcolumn=yes
set showcmd
set showmatch
filetype plugin indent on
set cursorline
set laststatus=2
" Give more space for displaying messages.
" set cmdheight=2

" Shorten the updatetime (default is 4000 ms = 4 s)
set updatetime=50

let g:lightline = {
  \ 'colorscheme': 'deus',
  \ }

colorscheme ghdark

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2c


let g:rg_highlight = 1
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = { 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'] }

let mapleader = " "
:imap ;; <esc>
:vmap ;; <esc>

nnoremap j gj
nnoremap k gk

" Moving lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi 
inoremap <A-k> <Esc>:m .-2<CR>==gi 

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

" Make emmet expanding work with tab, but keep the tabs
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
