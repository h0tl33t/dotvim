execute pathogen#infect()
execute pathogen#helptags()

set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on

set noswapfile
set nobackup
set hidden

colorscheme solarized
set number
set guifont=Monaco:h13
set background=dark
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell

set smartcase
set ignorecase
set incsearch

set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
filetype plugin indent on

set ruler

set wildignore+=public/uploads,tmp

set undolevels=1000
set backspace=indent,eol,start

set switchbuf=useopen

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Key Mappings
let mapleader = ","

set iskeyword-=_
set iskeyword+=-

map! jj <ESC>
map <F19> :bn<CR>
map <leader><F19> :bd<CR> <bar> :syntax on<CR>

"map <leader>hs :split<CR>
"map <leader>vs :vsplit<CR>

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

map <leader>n :NERDTree<CR>
map <leader>c :NERDTreeClose<CR>

" Map ,e to open files in the same directory as the current file
map <leader>e :e <C-R>=expand("%:h")<cr>/

" Mini Buff Explorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplForceSyntaxEnable = 1

" Command P
let g:CommandTMaxFiles=50000

autocmd BufNewFile,BufRead *.js setlocal filetype=eruby noexpandtab shiftwidth=4 tabstop=4 ts=4 sts=4
autocmd BufNewFile,BufRead *.erb setlocal filetype=eruby noexpandtab shiftwidth=4 tabstop=4 ts=4 sts=4
autocmd BufNewFile,BufRead *.html setlocal filetype=html noexpandtab shiftwidth=4 tabstop=4 ts=4 sts=4
autocmd BufNewFile,BufRead *.ejs setlocal filetype=html noexpandtab shiftwidth=4 tabstop=4 ts=4 sts=4