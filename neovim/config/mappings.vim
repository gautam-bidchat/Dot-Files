
let mapleader= ","
"Open Vim file
nnoremap <Leader>ev :tabedit $MYVIMRC<cr>
nnoremap <silent> <Leader><space> :nohl<cr>

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"Exit Inset Mode
inoremap jk <esc>
inoremap <esc> <nop>

"Insert newline by enter without entering insert mode
nnoremap <Enter> o<ESC>

"Split Management
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Code folding
" nmap <Leader>f0 :set foldlevel=0<CR>
" nmap <Leader>f1 :set foldlevel=1<CR>
" nmap <Leader>f2 :set foldlevel=2<CR>
" nmap <Leader>f3 :set foldlevel=3<CR>
" nmap <Leader>f4 :set foldlevel=4<CR>
" nmap <Leader>f5 :set foldlevel=5<CR>
" nmap <Leader>f6 :set foldlevel=6<CR>
" nmap <Leader>f7 :set foldlevel=7<CR>
" nmap <Leader>f8 :set foldlevel=8<CR>
" nmap <Leader>f9 :set foldlevel=9<CR>
" Enable folding with the spacebar
" nnoremap <space> za

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


