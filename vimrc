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

colorscheme brookstream
set number
set guifont=Monaco:h13
set background=dark
set linebreak
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

nnoremap ; :
map <leader>; :!

cmap gs git status
cmap ber bundle exec rspec
cmap berk bundle exec rake
cmap berp bundle exec rake parallel:spec
cmap berpp bundle exec rake parallel:prepare
cmap newdb bundle exec rake db:drop; bundle exec rake db:create; bundle exec rake db:migrate; bundle exec rake db:test:prepare
cmap cac CtrlPClearAllCaches
cmap jsh JSHint

map! jj <ESC>
map <F19> :bn<CR>
map <leader><F19> :bd<CR> <bar> :syntax on<CR>
map <leader>f <c-U>
map <leader>d <c-D>

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

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Mini Buff Explorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplForceSyntaxEnable = 1

" Command P
let g:CommandTMaxFiles=50000

autocmd BufNewFile,BufRead *.js setlocal filetype=eruby noexpandtab shiftwidth=4 tabstop=4 ts=4 sts=4
"autocmd BufNewFile,BufRead *.erb setlocal filetype=eruby noexpandtab shiftwidth=4 tabstop=4 ts=4 sts=4
"autocmd BufNewFile,BufRead *.html setlocal filetype=html noexpandtab shiftwidth=4 tabstop=4 ts=4 sts=4
autocmd BufNewFile,BufRead *.ejs setlocal filetype=html noexpandtab shiftwidth=4 tabstop=4 ts=4 sts=4
