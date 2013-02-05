set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'tsaleh/vim-matchit.git'
Bundle 'vim-ruby/vim-ruby.git'
" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
silent! call pathogen#runtime_append_all_bundles()

syntax on
filetype plugin indent on

set t_Co=256 

colorscheme vividchalk
set background=dark
set nowrap
set scrolloff=2
set number
set showmatch
set showmode
set showcmd
set ruler
set title
set wildmenu
set numberwidth=5

set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

"store lots of :cmdline history
set history=1000

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
"set smartindent
set laststatus=2
set showmatch
set wrap!
set incsearch
set ignorecase
set smartindent
set smarttab
set expandtab
set smartcase
set nomodeline
set hidden
set statusline=%{fugitive#statusline()}\ %F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%c\ (%p%%)]

nnoremap ; :
let mapleader=','
noremap \ ,
let maplocalleader='\'

nmap <leader>, :NERDTreeToggle<CR>
nmap <leader>T :CommandTFlush<CR>
nmap <leader>v :tabedit $MYVIMRC<CR>
map g) gt
map g( gT

let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
