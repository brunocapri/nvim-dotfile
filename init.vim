call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
Plug 'davidhalter/jedi-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'majutsushi/tagbar'
Plug 'Vimjas/vim-python-pep8-indent'

autocmd BufEnter * call ncm2#enable_for_buffer()
call plug#end()


colorscheme gruvbox
set background=dark

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
let mapleader="\<space>"

set completeopt=noinsert,menuone,noselect


nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nmap <F8> :TagbarToggle<CR>

let g:python3_host_prog="/Library/Frameworks/Python.framework/Versions/3.8/bin/python3.8"
let g:python_host_prog = '/usr/bin/python2'

let g:ale_python_flake8_options = '--ignore=E129,E501,E302,E265,E241,E305,E402,W503'
let g:ale_python_pylint_options = '-j 0 --max-line-length=120'
let g:ale_list_window_size = 4
let g:ale_sign_column_always = 0
let g:ale_open_list = 1
let g:ale_keep_list_window_open = '1'
