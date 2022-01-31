call plug#begin()

" vim-misc is required for vim-notes
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'jeetsukumaran/vim-buffergator'

Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

set number

" file type recognition
filetype on
filetype plugin on
filetype indent on

let mapleader=" "

" With the bang Ack won't jump to the first result
cnoreabbrev Ack Ack!
noremap <leader>a :Ack! <cword><CR>
" <leader>b is already used by vim-buffergator
noremap <leader>g :Ggrep <cword><CR>
noremap <leader>n :Note 
noremap <leader>p :CtrlP<CR>

" For taking notes
let g:notes_directories=['~/vim_notes']

" Airline conf
let g:airline_theme='distinguished'
let g:airline_powerline_fonts=1

" Gutentags configuration
set statusline+=%{gutentags#statusline()}
let g:gutentags_ctags_executable='/usr/bin/etags.ctags'
"let g:gutentags_trace = 1
