set nocompatible
filetype on
filetype plugin on
filetype indent on

syntax on


" Line numbers and cursor line
set number
set rnu
set nocursorline
set ruler


" Indents
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set backspace=eol,start,indent
set whichwrap+=<,>,h,l,[,]

set lbr
set tw=500

set ai "auto indent
set si "smart indent
set wrap "wrap lines


" Backups
set nobackup
set nowrap


" Search
set incsearch
set ignorecase
set smartcase
set showmatch
set hlsearch



" CMD
set showcmd
set history=200

set wildmenu
set wildmode=lastused:full,full
set wildignore=*.docx,*astusedg,*.png,*pdf,*pyc,*.exe,*.flv,*.img,*.xlsx

syntax enable


" Color
colo slate
highlight LineNr ctermfg=grey



