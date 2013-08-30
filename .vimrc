set ai  " Automatically set indent level
set smartindent " smart indent local to a buffer
set sidescrolloff=2
set tabstop=2
set textwidth=80
set shiftwidth=2
set smarttab
set expandtab
set lbr
set tw=500
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
inoremap <s-tab> <c-d>
cnoreabbrev Q q
cnoreabbrev W w
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set makeprg=gcc\ -o\ %<\ %
" File Stuff
filetype plugin indent on

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
let html_use_css=1
command! CD cd %:p:h

" pressing > or < will indent the selected lines
vnoremap < <gv
vnoremap > >gv

" undo in insert mode
imap <c-z> <c-o>u

" set line number
set number
set nocompatible
let mapleader = ","

inoremap <leader>w <esc>:w<cr>a
imap jj <Esc>
" Twerth configuration settings
" Vertical and horizontal split, and hop to the new buffer
:noremap <Leader>v :vsp^M^W^W<cr>
:noremap <Leader>h :split^M^W^W<cr>
" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
" Colors
syntax on
" Status
set showcmd
set ruler " Show ruler
" Line wrapping
set nowrap
set linebreak " Wrap at a word

" Insert new line without going into insert
map <S-Enter> O<ESC>
map <Enter> o<ESC>

" Invisible characters
set matchpairs+=<:>
map <Leader>p <C-^> " Go back to previous file
imap uu _
imap hh =>
" Color scheme
if has('gui_running')
  colorscheme irblack
endif
set guifont=Monaco\ 10
" Automatically change dir to current file being edited
set autochdir
" Set an alias
command Work cd /media/c/Users/xenoph/Desktop/A\ New\ Life/WorkStuff
" Go to file under cursor
map <F8> :vertical wincmd f<CR>
" Insert a single character
:nmap <Space> i_<Esc>r
" Open function definition keycodes
map <C-\> :sp <CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
set tags=tags;/
