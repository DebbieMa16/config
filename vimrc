syntax enable
set nocompatible

filetype plugin indent on
set smartindent autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set scrolloff=5
set copyindent " use existing indents for new indents

set number "Line numbers
set ruler "Show line numbers on the bar
set hidden " allows changing buffer with unsaved changes
set showcmd " Show (partial) command in status line.
set showmatch " Show matching brackets
set title "Set window name to file name

" Searching
set hlsearch " highlight the searchterms
set incsearch " jump to matches while typing
set ignorecase " ignore case while searching if all lowercase
set smartcase

set autoread
set autowrite
set noerrorbells

set showmode
set laststatus=2
set background=dark
set wildmenu "enhanced command-line completion
set backspace=indent,eol,start "allow backpacing over autoindent, eol, start
set mouse=a
set clipboard=unnamed
set noesckeys

colorscheme solarized
let g:airline_theme='dark'
let g:ctrlp_map = '<c-o>'
let g:indentLine_char = '│'
let g:tagbar_left = 1
let g:EasyMotion_leader_key = '<Leader>'
let g:BASH_Ctrl_j = 'off'
let g:ctrlp_reuse_window = 'nofile'

nnoremap <C-k>      <C-W>k
nnoremap <C-j>      <C-W>j
nnoremap <C-h>      <C-W>h
nnoremap <C-l>      <C-W>l

set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

nmap <Leader>q g:Jsbeautify()
nmap ,t :CtrlPBufTag<CR>

imap <c-h> <Esc><c-h>
imap <c-j> <Esc><c-j>
imap <c-k> <Esc><c-k>
imap <c-l> <Esc><c-l>
imap jj <Esc>
imap jJ <Esc>
imap Jj <Esc>
imap JJ <Esc>
noremap <C-s> :update <CR>
noremap <C-q> :q! <CR>
nore <leader>d :NERDTreeTabsToggle <Enter>

nmap <C-Tab> :tabnext<CR>
nmap <C-S-Tab> :tabprevious<CR>
map <C-Tab> :tabnext<CR>
map <C-S-Tab> :tabprevious<CR>
imap <C-Tab> :tabnext<CR>
imap <C-S-Tab> :tabprevious<CR>
map <Space> :noh<cr>
nore <C-t> :TagbarToggle<CR>
nore <Leader>r  :RainbowParenthesesToggle<CR>

" Maps for line changes
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv


execute pathogen#infect()
call pathogen#helptags()
set pastetoggle=<F2>
set completeopt=longest,menuone
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
iabbrev <? </<C-X><C-O>
set omnifunc=syntaxcomplete#Complete


au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


