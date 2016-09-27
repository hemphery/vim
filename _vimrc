""" Preferred .vimrc
""" source from http://stevelosh.com/blog/2010/09/coming-home-to-vim/
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim

""" Encoding settings - important for Chinese OS
" reference http://wxmfly.javaeye.com/blog/311125
" reference http://zengrong.net/post/1023.htm
if $LANG=='zh_CN'
    set encoding=chinese
    set fileencoding=chinese " chinese is an alias which represents gb2312 in Unix and cp936 in Windows, that is the code page for GBK
else
    set encoding=utf-8
    set fileencoding=utf-8
    " Show invisible characters
    set list
    set listchars=tab:▸\ ,eol:¬
    " Invisible character colors
    highlight NonText guifg=#4a4a59
    highlight SpecialKey guifg=#4a4a59
endif
set fileencodings=ucs-bom,utf-8,chinese,latin1
" menu and right click menu
" console output encoding

" System settings
set nocompatible
set nobackup

" Theme
set number
win 120 40
set guioptions-=T " No toolbar
set guioptions-=m " No menubar
colo molokai
" general theme override
hi Comment gui=italic

if has("Win32")
    " Windows fonts
    set guifont=Consolas:h11
else
    " Mac OS X font
    set guifont=Lato_Regular:h14
endif

" General settings
set scrolloff=3
set autoindent
set smartindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

" Remap some frequently used keys
let mapleader = ","
nnoremap ; :
inoremap jj <esc>
nnoremap <tab> %
vnoremap <tab> %

" Tab settings - all tabs expand to 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Searching and Moving
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" Long lines handling
set wrap
set textwidth=79
set formatoptions=qrn1
"set colorcolumn=85

" Disable arrow keys to help you learn to use hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Python
map <F12> :!python.exe % <enter> <esc>
