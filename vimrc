set nocompatible
set backspace=indent,eol,start
set history=50
set number
set ruler
set showcmd
set incsearch
set autoindent
set nocindent 
set nosmartindent 
set shiftwidth=4
set tabstop=4
set expandtab
set noerrorbells
set autoread
set nrformats=alpha
set nobackup
set nowritebackup
set noswapfile
set laststatus=1


" Syntax highlighting on when the terminal has colors
if &t_Co > 2 || has("gui_running")
  syntax on
endif

if has("autocmd")
  filetype plugin on

  " Source .vimrc file after save
  autocmd! bufwritepost .vimrc source %

  " Always jump to the last known cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
endif


" Function key maps
set nohlsearch
map <F2> :set hls!<CR>
set wrap
map <F3> :set wrap!<CR>


" Command key maps to create, close, and select tabs
map <D-t> :tabnew<CR>
