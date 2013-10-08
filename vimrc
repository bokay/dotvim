set nocompatible
filetype off " required by Vundle plumbing

runtime macros/matchit.vim
if has("autocmd")
  filetype indent plugin on
endif

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
set incsearch
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

set encoding=utf-8

" set cursorline

syntax on
set term=xterm-256color
set background=dark
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

" vim-rspec mappings
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
let g:rspec_command = "Dispatch zeus rspec {spec}"

noremap <S-space> <C-b>

map <up> {
map <down> }
map <C-left> <ESC>:bNext<CR>
map <C-right> <ESC>:bPrevious<CR>

set switchbuf=newtab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>

" Remove whitespaces
map <f6> :%s/\s\+$//<esc>:nohl<CR>:w<CR>

au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufNewFile,BufRead *.json set ft=javascript

set backupdir=~/.vim/backup
set directory=~/.vim/backup
set wmw=0

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

autocmd BufWritePre * :%s/\s\+$//e  "Remove trailing spaces

" Open new split panes to right and bottom
set splitbelow
set splitright

" Disable auto comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
