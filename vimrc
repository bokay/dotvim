set nocompatible
filetype off " required by Vundle plumbing

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
so ~/.vim/bundle.vim


set showmode
set showcmd         " display incomplete commands
set shiftwidth=2
set shiftround
set expandtab
set autoindent
filetype plugin indent on 
set ignorecase
set smartcase
" set smarttab " use tabs at the start of a line, spaces elsewhere
set incsearch
" assume the /g flag on :s substitutions to replace all matches in a line:
set gdefault

set scrolloff=3     " keep 3 lines when scrolling
set hlsearch        " highlight searches
set ruler           " show the cursor position all the time
"set visualbell t_vb    " turn off error beep/flash
set novisualbell    " turn off visual bell
set number          " show line numbers
set ignorecase      " ignore case when searching 
set title           " show title in console title bar
set ttyfast         " smoother changes
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines

set showmatch

" set cursorline

syntax on 
" set background=dark " we are using a dark background
colorscheme desert256
set guifont=Inconsolata:h20

set backspace=2 
set laststatus=2 
set backupdir=/tmp

if has('statusline')
  set statusline=%<%f\ 
  set statusline+=%w%h%m%r 
  set statusline+=\ [%{&ff}/%Y]  
  set statusline+=\ [%{getcwd()}]
  set statusline+=%=%-14.(Line:\ %l\ of\ %L\ [%p%%]\ -\ Col:\ %c%V%)
endif

"set autowrite "autowriteall ?
"autocmd FocusLost * wall
autocmd CursorHold * update
set updatetime=20

set switchbuf=newtab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>

