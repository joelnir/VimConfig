"Some commands taken from http://marcgg.com/blog/2016/03/01/vimrc-example/

"Pathogen
execute pathogen#infect()

syntax enable

set colorcolumn=90 "Show 90 characters line
set number "Show line numbers

"Keep more in memory, faster
set hidden
set history=100

"Indention
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

"Removes whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

"Highlight on search
set hlsearch

"Stop search with escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

"Highlight matching parenthesis
set showmatch

"Status row
set noshowmode
set noruler
set laststatus=2
set noshowcmd
set timeoutlen=1000 ttimeoutlen=0

"Disable arrow keys
nnoremap <Left> <Nop>
vnoremap <Left> <Nop>
inoremap <Left> <Nop>
nnoremap <Right> <Nop>
vnoremap <Right> <Nop>
inoremap <Right> <Nop>
nnoremap <Up> <Nop>
vnoremap <Up> <Nop>
inoremap <Up> <Nop>
nnoremap <Down> <Nop>
vnoremap <Down> <Nop>
inoremap <Down> <Nop>

"NerdTree
let NERDTreeShowHidden=1
let NERDTreeMapActivateNode='l'
let NERDTreeMapCloseChildren='h'
let NERDTreeMapQuit='q'
let NERDTreeQuitOnOpen=1
nmap t :NERDTreeToggle<CR>

"Lightline fixes
if !has('gui_running')
  set t_Co=256
endif

"Fix weird arrow key issue
nmap OA <Nop>

set wrap
set linebreak
set nolist  " list disables linebreak
