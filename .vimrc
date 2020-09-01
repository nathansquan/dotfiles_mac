filetype plugin indent on

syntax on
"this is a comment
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'jgm/pandoc-citeproc'
call plug#end()

" Options
set encoding=utf-8
set fileencodings=utf-8

colorscheme seoul256
set background=dark

" Goyo remap
nnoremap <C-g> :Goyo<CR>

" Goyo auto open for all markdown files
autocmd FileType markdown Goyo


set incsearch
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set omnifunc=syntaxcomplete#Complete

" vim-pandoc
let g:pandoc#fileypes#handled = ["pandoc", "markdown"]
let g:pandoc#modules#disabled = ["folding"]
"Allow vim-pandoc auto execute pandoc on writes
let g:pandoc#command#autoexec_on_writes = 1
let g:pandoc#command#autoexec_command = "Pandoc! pdf"
"bib options
let g:pandoc#biblio#use_bibtool = 1
let g:pandoc#completion#bib#mode = 'citeproc'
"let g:pandoc#biblio#sources = 'g'
let g:pandoc#biblio#bibs = ["Documents/Notes/global.bib"]
