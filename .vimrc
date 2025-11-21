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


" Bindings
" vnoremap yy :w !xclip -selection clipboard<CR><CR>



set signcolumn=yes
set updatetime=12
set shiftwidth=4
set tabstop=4
set mouse=a

set undofile
set undodir=~/.vim/undo

set matchpairs=(:),[:],{:},<:>

set list
set lcs=space:·,tab:>\ 

au BufReadPost *
   \  if line("'\"") > 0 && line ("'\"") <= line("$") |
   \      exe "normal g'\"" |
   \  endif |

let g:ft_man_open_mode = 'tab'

let mapleader = " "
vnoremap <silent><leader>t :!column -t -o' '<CR>
nnoremap <silent><F9> 	   :make<CR>

nnoremap <silent><leader>f :copen<CR> 
nnoremap <silent><leader>c :cclose<CR> 
nnoremap <silent><leader>n :cnext<CR> 
nnoremap <silent><leader>N :cprev<CR> 

nnoremap <silent> <C-Left>  :bprev!<CR>
nnoremap <silent> <C-Right> :bnext!<CR>
nnoremap <silent> <F12> 	:bdelete!<CR>

nnoremap <leader>m :call functions#ManPageFullscreen()<CR>
nnoremap <silent> <leader>p :execute 'set' (&nu ? 'nonu nornu signcolumn=no nolist' : 'nu rnu signcolumn=yes list')<CR>

nnoremap <silent> <S-Left>  :vertical resize -1<CR>
nnoremap <silent> <S-Right> :vertical resize +1<CR>

" Nerdtree
nnoremap <silent> <leader>e :NERDTreeToggle<CR>

" Lsp
let g:lsp_diagnostics_enabled = 0
let g:lsp_document_highlight_enabled = 0
nnoremap <silent> <leader>ld :LspDefinition<CR>
nnoremap <silent> <leader>lp :LspPeekDefinition<CR>
nnoremap <silent> <leader>lr :LspRename<CR>

" Complete
let g:asyncomplete_auto_popup = 0

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <C-b>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Git
nnoremap <silent> <leader>gl :Git log --oneline --graph<CR>
nnoremap <silent> <leader>gs :Git status<CR>
nnoremap <silent> <leader>gb :Git branch<CR>
