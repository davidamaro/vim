" Apariencia "
set list!
set spelllang=es_es
colorscheme solarized
set background=dark
" Editar este archivo "
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" Evitar torpezas "
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" Abreviaciones "
iabbrev @@ dav1494@ciencias.unam.mx
iabbrev mov movimiento
iabbrev vel velocidad
iabbrev acel aceleración
" Comentar lineas"
augroup comment
    autocmd!
    autocmd FileType python nnoremap <buffer> <leader>c I#<esc>
    autocmd FileType perl nnoremap <buffer> <leader>c I#<esc>
    autocmd FileType tex nnoremap <buffer> <leader>c I%<esc>
    autocmd FileType c nnoremap <buffer> <leader>c I//<esc>
    autocmd FileType sh nnoremap <buffer> <leader>c I#<esc>
augroup END
" Perl "
augroup perl
    autocmd!
    autocmd FileType perl iabbrev -- =>
    autocmd FileType perl iabbrev forr foreach
    autocmd FileType perl iabbrev elif elsif
    autocmd FileType perl iabbrev elseif elsif
    autocmd FileType perl let &l:tabstop=2
    autocmd FileType perl let &l:shiftwidth=2
"    autocmd Filetype perl nnoremap <leader>q :execute "normal!" "mqA;\<esc>`q"
augroup END
" LaTeX "
augroup latex
    autocmd!
augroup END
" C / C++"
augroup c
    autocmd!
    autocmd FileType c iabbrev null NULL
    autocmd FileType c iabbrev eof EOF
    autocmd FileType c iabbrev ##i #include
    autocmd FileType c nnoremap <silent> <buffer> <leader>, :%s/\v,$/;/g<cr>
augroup END
" Delimitadores "
onoremap in[ :<c-u>normal! f[vi[<cr>
onoremap il[ :<c-u>normal! F]vi[<cr>
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il{ :<c-u>normal! F}vi{<cr>
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
nnoremap <c-w>l :execute "rightbelow vsplit " . bufname("#")<cr>
nnoremap <silent> <leader>s :nohlsearch<cr>
set backspace=indent,eol,start
set ruler
set number
set listchars=tab:▸\ ,eol:¬
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
filetype indent on
inoremap jk <ESC>
syntax enable
set hlsearch
filetype plugin indent on
set autoindent
let g:tex_flavor='latex'
" lo pidió latex-vim "
set grepprg=grep\ -nH\ $*
