" Bootstrap Plug
let autoload_plug_path = stdpath('data') . '/site/autoload/plug.vim'
if !filereadable(autoload_plug_path)
  silent execute '!curl -fLo ' . autoload_plug_path . '  --create-dirs 
      \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
unlet autoload_plug_path


call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'ajh17/VimCompletesMe'
Plug 'jpalardy/vim-slime'
"Plug 'ludovicchabant/vim-gutentags'


Plug 'davidhalter/jedi-vim', {'for': 'python'}
call plug#end()

let mapleader = "\\"

"filetype plugin indent on
nnoremap ; :
filetype on

syntax enable

set encoding=utf-8
set hidden

" Statusline
set nu rnu
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
" set statusline+=%{gutentags#statusline()}

" Ignore case almost always
set ignorecase smartcase

set spelllang=en,es,fr

set incsearch

set wildmenu
		
" Undofile
set undofile

" Sudo after opening file
cmap w!! w !sudo tee % >/dev/null

inoremap <silent> kj <Esc>

" Toggle spell checking
nnoremap <silent> <F11> :set spell!<cr>
inoremap <silent> <F11> <C-O>:set spell!<cr>

" Clipboard
set clipboard+=unnamedplus

""  Mappings

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <leader>b :ls<cr>:b<space>

nnoremap <F2> :Copen<CR>
inoremap <F2> :Copen<CR>

" Reload nvim config
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>

" Jump over delimiter
inoremap <S-Tab> <esc>la

" Fix the last mistake while typing
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Faster autocompletition
set completeopt+=noinsert
"
inoremap <silent> ,f <C-x><C-f>
inoremap <silent> ,i <C-x><C-i>
inoremap <silent> ,l <C-x><C-l>
inoremap <silent> ,n <C-x><C-n>
inoremap <silent> ,o <C-x><C-o>
inoremap <silent> ,t <C-x><C-]>
inoremap <silent> ,u <C-x><C-u>

let g:tex_flavor = "latex"

function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction


call SourceIfExists(".localvim")

" Newtr
"
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 2
let g:netrw_winsize = 25


" Jedi
"
let g:jedi#completions_command = "<C-N>"

