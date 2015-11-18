"Pathogen - a vim plugin for managing vim plugins
execute pathogen#infect()

"Enable advanced vim features
set nocompatible

"Progamming
filetype plugin indent on
syntax enable

"Set dark for solarized
"set background=dark

"Most colorschemes are designed for gvim
" IMPORTANT: Uncomment one of the following lines to force
" using 256 colors (or 88 colors) if your terminal supports it,
" but does not automatically use 256 colors by default.
set t_Co=256
"set t_Co=88
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }

"Colorschemes I like
"colorscheme oh-la-la
colorscheme distinguished

"Indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

"remap history 'q:' to do nothing to avoid accidents
nnoremap q: <Nop>

"Make backspace work like most editors
set backspace=2

"Remap escape key to something sane
inoremap jk <Esc>
inoremap kj <Esc>
inoremap Jk <Esc>
inoremap jK <Esc>
inoremap JK <Esc>
inoremap KJ <Esc>

"Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Prevent asking to encrypt on save
ca X x

"Save file even if i have caps on
ca W w

"Persistent Undo
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000

"Line numbers
"set number

"keep buffers and marks while switching files
set hidden

"mapleader
let mapleader=','

"Enhanced autocompletion
set wildmenu

"Display line and position numbers
set ruler

"Show line length of 79 characters
"set colorcolumn=80
"hi ColorColumn ctermbg=lightgreen

"Auto change working directory to current file
"set autochdir

"Show the pattern matches in real time for searching
set incsearch

"Switch windows and tabs when opening a buffer
set switchbuf=usetab

"tell vim where to find tags file (anywhere)
set tags=/usr/src/linux-headers-3.11.0-12/tags

"Restore cursor position in previous editing session
" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

"Syntastic
"Automatic checking doesn't work (look at youcompleteme plugin)
"let g:syntastic_enable_signs = 1
"let g:syntastic_mode_map= { "mode": "active" }
"let g:syntastic_check_on_open = 1

"Status line
"set statusline+=%{SyntasticStatuslineFlag()}

"Session managment with session.vim 
let g:session_autosave = 'yes'
let g:session_autoload = 'no'


"File type specific options
"Arranged here to enable greater portablility

"Python

"When typing """ delimitmate will add a second """
au FileType python let b:delimitMate_nesting_quotes = ['"']


"mappings for sideways.vim
nnoremap <F9> :SidewaysLeft<cr>
nnoremap <F10> :SidewaysRight<cr>

