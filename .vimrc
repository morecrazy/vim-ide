set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'cespare/vim-golang'
Bundle 'Blackrush/vim-gocode'
Bundle 'fatih/vim-go'
Bundle 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim' 
Plugin 'scrooloose/nerdtree'
nmap <F8> :TagbarToggle<CR>
map <F9> :NERDTree<CR>
map <F10> :tabn<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

call vundle#end()
filetype plugin indent on
syntax enable
set background=dark
" colorscheme molokai
colorscheme SolarizedDark
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"


