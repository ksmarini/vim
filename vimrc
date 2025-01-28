call plug#begin()
" List your plugins here
Plug 'mhinz/vim-startify'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'tomasiser/vim-code-dark'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/tagbar'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set encoding=utf-8
let mapleader="\<space>"
nnoremap <leader>ev :vsplit ~/.config/vim/vimrc<cr>
nnoremap <leader>sv :source ~/.config/vim/vimrc<cr>
nnoremap <leader>ss :write<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

" colorscheme options
colorscheme codedark
set background=dark
set guifont=Hack\ Nerd\ Font\ Mono:h12
" Minhas configs diversas
" set fileformat=unix
" set shortmess+=c
set mouse=a  " change cursor per mode
set cursorline
set number  " always show current line number
set relativenumber
set ignorecase " case insensitive
set smartcase  " better case-sensitivity when searching
set wrapscan  " begin search from top of file when nothing is found anymore
set expandtab
set tabstop=4
set shiftwidth=4
set fillchars+=vert:\  " remove chars from seperators
set softtabstop=4

set history=5000  " remember more commands and search history
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
set hidden

"Limpa o highlight da pesquisa
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<c-l>', 'n') ==# ''
    nnoremap <silent> <c-l> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><c-l>
endif

set nobackup  " no backup or swap file, live dangerously
set nowritebackup
set noswapfile  " swap files give annoying warning

set breakindent  " preserve horizontal whitespace when wrapping
set showbreak=..
set lbr  " wrap words
set nowrap  " i turn on wrap manually when needed

set scrolloff=3 " keep three lines between the cursor and the edge of the screen

set undodir=~/.config/vim/undodir
set undofile  " save undos
set undolevels=10000  " maximum number of changes that can be undone
set undoreload=100000  " maximum number lines to save for undo on a buffer reload

set noshowmode  " keep command line clean
set noshowcmd

set laststatus=2  " always slow statusline

set splitright  " i prefer splitting right and below
set splitbelow

set hlsearch  " highlight search and search while typing
set incsearch
set cpoptions+=x  " stay at seach item when <esc>

set noerrorbells  " remove bells (i think this is default in neovim)
set visualbell
set t_vb=
set viminfo='20,<1000  " allow copying of more than 50 lines to other applications

" opcoes de menu
set wildmenu
set wildmode=longest,full
set wildoptions=pum

" easy split movement
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

" tabs:
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" mapping Esc
"imap <F13> <Esc>
"cnoremap <Esc> <C-c>
"inoremap <c-c> <ESC>
"nnoremap <C-z> <Esc>  " disable terminal ctrl-z

" map S to replace current word with pasteboard
"nnoremap S diw"0P
"nnoremap cc "_cc
"nnoremap q: :q<CR>
"nnoremap w: :w<CR>

" map paste, yank and delete to named register so the content
" will not be overwritten (I know I should just remember...)
"nnoremap x "_x
"vnoremap x "_x

set clipboard=unnamedplus

" toggle nerdtree on ctrl+n
map <c-k>i :IndentLinesToggle<cr>
map <C-n> :NERDTreeToggle<CR>
map <C-t> :set nosplitright<CR>:TagbarToggle<CR>:set splitright<CR>

" Navegação entre os buffers
" Precisei mudar o alt por ctrl por causa de conflito com o tmux
" nnoremap <M-right> :bn<cr>
nnoremap <c-right> :bn<cr>
" nnoremap <M-Left> :bp<cr>
nnoremap <c-left> :bp<cr>
nnoremap <c-x> :bp \| bd #<cr>

" Configura o plugin de cometários de linhas ou blocos
" filetype plugin on
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
map cc <Plug>NERDCommenterToggle

" Airline settings
" do not show error/warning section
" let g:airline_section_error = ""
" let g:airline_section_warning = ""

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline_section_y = ""
let g:airline_status_ontop = 0
let g:airline_theme='dracula'

let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty=' ⚡'

" Disable Jedi-vim autocompletion and enable call-signatures options
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"

" vimgutter options
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_map_keys = 0

" ctrl p options
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v\.(npy|jpg|pyc|so|dll)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Configura o plugin vim-ale (linter e fixer)
" Esse trecho foi retirado do video
" https://www.youtube.com/watch?v=hdZMqMeruSQ&list=WL&index=44
" let b:ale_linters = {'python': ['flake8', 'pylint'],'javascript': ['eslint']}
" let g:ale_completion_enabled = 1
" let g:ale_linters = {'python': 'all'}
"
" Extraído do site
" https://medium.com/nerd-for-tech/vim-as-an-ide-for-python-2021-f922da6d2cfe
"
let b:ale_linters = {'python': 'all','javascript': ['eslint']}
let g:ale_fixers = {'python': ['isort', 'yapf', 'remove_trailing_lines', 'trim_whitespace']}
let g:ale_lsp_suggestions = 1
let g:ale_fix_on_save = 1
let g:ale_go_gofmt_options = '-s'
let g:ale_go_gometalinter_options = '— enable=gosimple — enable=staticcheck'
let g:ale_completion_enabled = 0
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] [%severity%] %code: %%s'
set updatetime=300

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger='<tab>'

" shortcut to go to next position
let g:UltiSnipsJumpForwardTrigger='<c-j>'

" shortcut to go to previous position
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

source ~/.config/vim/coc.nvimrc

