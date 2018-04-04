if empty(glob('~/AppData/Local/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/AppData/Local/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/AppData/Local/nvim/bundle')

Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/taglist.vim'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline-themes'
Plug 'equalsraf/neovim-gui-shim'
Plug 'townk/vim-autoclose'
Plug 'mattn/emmet-vim'

call plug#end()

"""""""""""""""""""""""""""""""""Theme & Colors""""""""""""""""""""""""""""""""""""""""""""
colorscheme OceanicNext
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1


"""""""""""""""""""""""""""""""""Functions""""""""""""""""""""""""""""""""""""""""""""
if (has("termguicolors"))
 set termguicolors
endif

"""""""""""""""""""""""""""""""""Settings""""""""""""""""""""""""""""""""""""""""""""
syntax enable
syntax on
set showmatch           " Show matching brackets.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
"set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.
set nojoinspaces 
set t_Co=256
set encoding=utf-8
set hlsearch  " Highlight matching search patterns
set incsearch " Enable incremental search
set ignorecase " Include matching uppercase words with lowercase search term
set smartcase " Include only uppercase words with uppercase search term
set nowrap	"# Wrap lines
set showbreak=+++	"# Wrap-broken line prefix
set textwidth=100	"# Line wrap (number of cols)
set showmatch	"# Highlight matching brace
"set spell	"# Enable spell-checking
set errorbells	"# Beep or flash screen on errors
set visualbell	"# Use visual bell (no beeping)
set autoindent	"# Auto-indent new lines
set smartindent	"# Enable smart-indent
set smarttab	"# Enable smart-tabs
set softtabstop=4	"# Number of spaces per Tab
 set ruler	"# Show row and column ruler information
set showtabline=2	"# Show tab bar
set undolevels=1000	"# Number of undo levels
set backspace=indent,eol,start	"# Backspace behaviour
set laststatus=2
set ttimeoutlen=50 




"""""""""""""""""""""""""""""""""Nerd Tree""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
\| endif



"""""""""""""""""""""""""""""""""Airline""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='base16_spacemacs'
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''


"""""""""""""""""""""""""""""""""Emmet""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_mode='a'    "enable all function in all mode.