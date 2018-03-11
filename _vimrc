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
set incsearch
set hlsearch
set ignorecase
set ruler
set cursorline
set mouse=a

set splitbelow
set splitright

set laststatus=2

"off beep sound
set visualbell t_vb=
set noerrorbells


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

"lightline.vim
let g:lightline = {
      \ 'colorscheme': 'molokai'
      \ }

"shortcut key ---------------------------s
nnoremap <ESC><ESC> :nohlsearch<CR>
inoremap <silent> jj <ESC>
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sn gt
nnoremap sp gT
nnoremap st :<C-u>tabnew<CR>
"nerdtree.vim
nnoremap [nerdtree]    <Nop>
nmap     <Space>n [nerdtree]
nnoremap <silent>[nerdtree]n :NERDTreeToggle<CR>
nnoremap <silent>[nerdtree]f :NERDTreeFind<CR>
"quickrun.vim
nnoremap <silent><C-r> :QuickRun<CR>

let s:ruby_libdir = system("ruby -rrbconfig -e 'print Config::CONFIG[\"libdir\"]'")
  let s:ruby_libruby = s:ruby_libdir . '/libruby.dylib'
  if filereadable(s:ruby_libruby)
    let $RUBY_DLL = s:ruby_libruby
  endif

"IndentLine"
let g:indentLine_enabled = 1
