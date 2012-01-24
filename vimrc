" .vimrc
" by chrizel <chrizel@gmail.com>

call pathogen#infect()

set autoindent
set cindent
set modeline
set nocompatible
set showmatch     " paranthesis matching
set hlsearch      " search pattern highlighting
set incsearch     " incremental search
set ignorecase    " case insensitive search
set guioptions-=T " disable toolbar
set guioptions-=m " disable menu bar
set guioptions-=r " disable scroll bar
set guioptions-=L " disable scroll bar
set ruler         " show ruler
set mouse=a
set smartcase
set wildmenu
set wildmode=list:longest
set title
set titleold=Terminal
set nobackup
set nowritebackup
set hidden

syntax on

"set ts=2 et sw=2 sta sts=2
set ts=4 et sw=4 sta sts=4
"set sw=8 noet

" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]

let mapleader = ","
set wildignore+=*.o,*.obj,.git

" highlight strings in C comments
let c_comment_strings=1
map ,s :e %:p:s,.h$,.X123X,:s,.cc$,.h,:s,.X123X$,.cc,<CR>
"map ,s :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

au BufNewFile,BufRead *.rb set ts=2 et sw=2 sts=2
au BufNewFile,BufRead *.pas set ts=2 et sw=2 sts=2
au BufNewFile,BufRead .virc set filetype=vim
au BufNewFile,BufRead SCons* set filetype=python
au BufNewFile,BufRead wscript set filetype=python

imap jj <ESC>

set go-=T
set gcr=a:blinkon0

"set foldenable
set foldmethod=marker

filetype on
filetype plugin on		" plugins are enabled
filetype indent on

if !has("win32unix") && !has("win32")
    set list listchars=tab:»·,trail:·
endif

if has("macunix")
    set gfn=Monaco:h14
elseif has("windows")
    set gfn=Consolas:h14
else
    set gfn=Bitstream\ Vera\ Sans\ Mono:h12
endif

" NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']

nnoremap ,s :%s/\<<C-r><C-w>\>/
nnoremap ,l :ls<CR>:b<space>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>

colorscheme wombat
