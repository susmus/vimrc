set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter.git'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'tpope/vim-rails.git'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tomasr/molokai'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'bling/vim-airline'
"Plugin 'kevinw/pyflakes-vim'
"Plugin 'anders/snipmate.vim'
"Plugin 'docunext/closetag.vim'
Plugin 'mileszs/ack.vim'
Plugin 'airblade/vim-gitgutter'
"Plugin 'joonty/vim-phpqa'
"Plugin 'ervandew/supertab'
"Plugin 'shawncplus/phpcomplete.vim'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'sickill/vim-pasta'
"Plugin 'sjl/gundo.vim'
"Plugin 'fs111/pydoc.vim'
"Plugin 'vim-scripts/pep8'
"Plugin 'lfredodeza/pytest.vim'
"Plugin 'sontek/rope-vim'

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

if &term =~ "xterm"
  " 256 colors
  let &t_Co = 256
  " restore screen after quitting
  let &t_ti = "\<Esc>7\<Esc>[r\<Esc>[?47h"
  let &t_te = "\<Esc>[?47l\<Esc>8"
  if has("terminfo")
    let &t_Sf = "\<Esc>[3%p1%dm"
    let &t_Sb = "\<Esc>[4%p1%dm"
  else
    let &t_Sf = "\<Esc>[3%dm"
    let &t_Sb = "\<Esc>[4%dm"
  endif
endif

"colorscheme badwolf

if has('gui_running')
    "colorscheme monokai
    "colorscheme murphy
    "colorscheme codeschool
    "colorscheme badwolf
    "colorscheme darkspectrum
    "colorscheme molokai
    "colorscheme earendel
    "colorscheme hybrid
    "colorscheme inkpot 
    "colorscheme jellybeans
    "colorscheme lucius
    "colorscheme phd
    "colorscheme proton "dark 
    "colorscheme sexy-railscasts
    colorscheme skittles_berry
    "colorscheme sol
    "colorscheme sol-term
    "colorscheme sonoma "?
    "colorscheme summerfruit256
    "colorscheme ubloh 
    "colorscheme zenburn
    "colorscheme Chasing_Logic
    "colorscheme Tomorrow-Night-Bright
    "
    "set guifont=DejaVu\ Sans\ Mono\ 10
    "set guifont=Ubuntu\ Mono\ 12
    "set guifont=Ttyp0\ 10
    "set guifont=Terminus\ Bold
    "set guifont=Droid\ Sans\ Mono\ 10
    set guifont=Fixed\ 11
    set lines=40 columns=80
    set guioptions=aAce
    set guioptions+=r  "add right-hand scroll bar
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Fast saving
"nmap <leader>w :w!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
"set relativenumber
set number
set nocp
" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
"set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
"set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
syntax on
set encoding=utf8
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
nnoremap <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" move between tabs
map <C-K> :bnext<CR>
map <C-J> :bprev<CR>
"map <C-Tab> :MBEbn<cr>
"map <C-S-Tab> :MBEbp<cr>
"map <leader>bn :MBEbn<cr>
"map <leader>bp :MBEbp<cr>

" Close the current buffer
map <leader>bd :MBEbw<cr>
map <leader>bw :MBEbw<cr>

" Close all the buffers
"map <leader>ba :1,1000 bd!<cr>

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \
"Line:\ %l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu
"set cursorline
" Remap VIM 0 to first non-blank character
"map 0 ^

"--[ Omnicomplete
set omnifunc=syntaxcomplete#Complete
"
"--[ CtrlP
let g:ctrlp_use_caching=0
"let g:ctrlp_clear_cache_on_exit=0
"let g:ctrlp_cache_dir='G:\TEMP'
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$|\.log$'
  \ }

let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_root_markers = ['.ctrlp']
"let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d' " Windows
"nnoremap <F4> :CtrlPBuffer<CR>

"--[ Tagbar
nnoremap <F3> :TagbarToggle<CR>

"--[ MiniBufExpl Colors
hi MBEVisibleActive guifg=#A6DB29
hi MBEVisibleChangedActive guifg=#F1266F
hi MBEVisibleChanged guifg=#F1266F
hi MBEVisibleNormal guifg=#5DC2D6
hi MBEChanged guifg=#CD5907
hi MBENormal guifg=#808080

"--[ NERDTree
let g:NERDTreeWinPos = "right"

"--[ SuperTab Integration
"set completeopt-=previewtj
"let g:SuperTabDefaultCompletionType = ""
"let g:SuperTabDefaultCompletionType = "context"

"--[ ctags path
"let Tlist_Ctags_Cmd = 'C:\Linuxtools\ctags58\ctags.exe'
"let g:tagbar_ctags_bin = 'C:\Linuxtools\ctags58\ctags.exe'

" etc bindings
nmap ; :
nnoremap Q <Nop>

"--[ ack & ag
let g:ackprg = 'ag --nogroup --nocolor --column'

au FileType php set omnifunc=phpcomplete#CompletePHP

" You might also find this useful
" PHP Generated Code Highlights (HTML & SQL)                                              
let php_sql_query=1                                                                                        
let php_htmlInStrings=1

"autocmd InsertEnter * :set number
"autocmd InsertLeave * :set relativenumber

"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
