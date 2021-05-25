" Plugins
call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'

Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'

Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'kyazdani42/nvim-web-devicons'
" Theme plugins
Plug 'wojciechkepka/vim-github-dark'
Plug 'itchyny/landscape.vim'
call plug#end()

" General

filetype plugin on
filetype indent on

" Set autoread when a file is changed from outside
set autoread
au FocusGained,BufEnter * checktime

" Set leader to <Space>
let mapleader = " "

" Fast saving
nmap <leader>w :w!<cr>

" Interface

set scrolloff=8

set relativenumber
set number
set wildmenu
set ruler
set cmdheight=1
set noshowmode
set showcmd
set showmatch
set cursorline
set laststatus=2
set hidden 
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch 
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Colors and Fonts

syntax enable

let g:lightline = {
  \ 'colorscheme': 'deus',
  \ }

try 
  colorscheme ghdark
endtry

set encoding=utf8
set ffs=unix,dos,mac

" Files, backups and undo 

set nobackup 
set nowb 
set noswapfile 
set undodir=~/.vim/undodir
set undofile

" Text, tab and indent
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2 softtabstop=2

set autoindent
set smartindent 
set nowrap

" Misc
set noshowmode
set showcmd
set showmatch
set cursorline
set laststatus=2

" Shorten the updatetime (default is 4000 ms = 4 s)
set updatetime=50

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2c

let g:rg_highlight = 1
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = { 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'] }

lua << EOF
require('telescope').setup {
  defaults = {
    prompt_position = 'top',
    prompt_prefix = ' > ',
    sorting_strategy = 'ascending',
    color_devicons = true
  }
}

require('nvim-web-devicons').setup {
  override = {
    ruby = {
      color = "#ff0000"
    }
  }
}
EOF

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
