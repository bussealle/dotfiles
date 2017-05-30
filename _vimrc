" reset augroup
augroup MyAutoCmd
autocmd!
augroup END



"coloring"
syntax on
set t_Co=256
"encoding"
set encoding=utf8

set expandtab
set textwidth=0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
"search"
set incsearch
set hlsearch
set ignorecase
"number of row and column"
set ruler

set splitbelow
set splitright


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
if has('nvim')
    let s:dein_cache_path = expand('/Users/admin/.cache/nvim/dein')
else
    let s:dein_cache_path = expand('/Users/admin/.cache/vim/dein')
endif
" Required:
let s:dein_dir = s:dein_cache_path
                 \ .'/repos/github.com/Shougo/dein.vim'

if &runtimepath !~ '/dein.vim'
  if !isdirectory(s:dein_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
  endif
  execute 'set runtimepath+=' . fnamemodify(s:dein_dir, ':p')
endif

" Required:
if dein#load_state(s:dein_cache_path)
  call dein#begin(s:dein_cache_path)

  " Let dein manage dein
  " Required:
  
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy' : 0})
  call dein#load_toml('~/.config/nvim/deinlazy.toml', {'lazy' : 1})

  " Required:
  call dein#end()
" 補完の設定
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


