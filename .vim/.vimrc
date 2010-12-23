set nocompatible
set autoindent
set tabstop=4
set shiftwidth=4
set showmatch
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L
set vb t_vb=
set ruler
set nohls
set incsearch
set virtualedit=all
colorscheme ashen
set number
set binary noeol
set backspace=indent,eol,start

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>



augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END
" ================

let mapleader = ","

map <Leader>t :FuzzyFinderTextMate<CR>
map <Leader>r :FuzzyFinderTextMateRefreshFiles<CR>

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>


