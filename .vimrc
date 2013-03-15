colorscheme desert 
"""OPTIONS"""
"blue.vim
"darkblue.vim
"default.vim
"delek.vim
"desert.vim
"elflord.vim
"evening.vim
"koehler.vim
"morning.vim
"murphy.vim
"pablo.vim
"peachpuff.vim
"ron.vim
"shine.vim
"slate.vim
"torte.vim
"zellner.vim

set autoindent
set autowrite
set et
set history=50
set incsearch
set linebreak
set matchpairs+=<:>
set matchtime=2
set mouse=v
set number
set ruler
set smarttab
set tabstop=4
set title
set nocompatible
set sw=4

syntax on 
filetype plugin indent on
filetype indent on

""""""""""""""""""""
" Key Mappings     "
""""""""""""""""""""

" Pretty print json document
noremap <leader>jt <Esc>:%!json_xs -f json -t json-pretty<CR>

" (currently not functional) Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
noremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
noremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
noremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
noremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

"" Function keys ""
" Turn line numbers off and on
map <F2> <Esc>:call ToggleNumber()<CR>

" Open taglist by hitting <f3>
map <F3> <Esc>:TlistToggle<CR>
map <F4> <Esc>:TlistOpen<CR>

" Turn auto indent off and on
map <F5> <Esc>:call ToggleAutoIndent()<CR>

function! ToggleNumber()
    if (&number == 1)
        set nonumber
    else
        set number
    endif
endfunction

function! ToggleAutoIndent()
    if (&autoindent == 1)
        set noautoindent
    else
        set autoindent
    endif
endfunction
