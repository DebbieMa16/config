"let mapleader=","
let g:mapleader=","
"nnoremap <leader>a :echo("\<leader\> works! It is set to <leader>")<CR>
execute pathogen#infect()
call pathogen#incubate()
set backspace=2
set nocompatible 
set noerrorbells 
set hidden 

"YouCompleteMe 
"let g:ycm_global_ycm_extra_conf = ~/.vim/.ycm_extra_conf.py
"let g:ycm_key_list_select_completion=[]
"let g:ycm_key_list_previous_completion=[]

filetype plugin on 
filetype plugin indent on 

"vim-LaTex 
"set grepprg=grep\ -nH\$*
"let g:text_flavor='latex'
let g:LatexBox_viewer="open -a Skim"
"set complete+=k

set clipboard=unnamed "copy paste

"multiedit plugin
    ""insert a disposable marker after cursor
    nmap <Leader>ma :MultieditAddMark a<CR>
    ""insert a disposable marker befroe the cursor
    nmap <Leader>mi :MultieditAddMark i<CR> 
    ""make a new line and insert a marker
    nmap <Leader>mo o<Esc>:MultieditAddMark i<CR>
    nmap <Leader>mO O<Esc>:MultieditAddMark i<CR>
    ""insert a marker at the end/start of a line
    nmap <Leader>mA $:MultieditAddMark a<CR>
    nmap <Leader>mI ^:MultieditAddMark i<CR> 
    ""make the current sleection/word an edit region
    vmap <Leader>m :MultieditAddRegion<CR>
        "in normal mode
    vmap <Leader>mm viw:MultieditAddRegion<CR>
    ""Restore the regions from a previous edit session
    nmap <Leader>mu :MultieditRestore<CR> 
    ""move cursor between regions n times
    map ]m :MultieditHop 1<CR> 
    map [m :MultieditHop -1<CR> 
    ""start editing
    nmap <Leader>M :Multiedit<CR> 
    ""clear word, start editing
    nmap <Leader>C :Multiedit!<CR> 
    ""unset all regions
    nmap <silent> <leader>mr :MultieditReset<CR>

"multi-cursor
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"tabs 
set tabstop=8
set shiftwidth=4
set expandtab "use spaces instead of tabs 
set nocindent
set softtabstop=4
set autoindent
set copyindent
set cindent

"move along split windows faster
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

let g:BASH_Ctrl_j = 'off'

"navigation
set scrolloff=5 "keep at least 5 lines above/below cursor
set number 
set ruler "show current position
let g:EasyMotion_leader_key = '<Leader>' "use <Leader>f for search forward & <Leader>F for search backward

set wildmenu "menu has tab completion
set wildmode=list:longest "set wildmenu to list choice

"searching
set ignorecase "case insensitive
set smartcase "unless explicitly search for upper case
set hlsearch "highlight searches
set incsearch "incremental search 
set showmatch "show matching parentheses
map <Space> :noh<CR>

"information
set showcmd "show partial command in status
set showmode "show current mode
set laststatus=2 "always show status line
let g:airline_theme='dark'
"set statusline=%.40F%=%m\ %Y\ Line:\ %3l/%L[%3p%%] "full filepath is dispalyed on the left, various other things on right (whether or not file has been modified, filetype, line number, percentage through the file)

syntax enable
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_degrade=1
let g:solarized_bold=1
let g:solarized_italic=1
let g:solarized_contrast='normal'
let g:solarized_visibility='normal'
colorscheme solarized "need to make your terminal solarized 
"colorscheme Tomorrow-Night
set omnifunc=syntaxcomplete#Complete

set clipboard=unnamed
set mouse=a

imap jj <Esc>
imap Jj <Esc>
imap jJ <Esc>
imap JJ <Esc>

nnoremap ; :
    "Ctrl-E to open/close NERDTree
nnoremap <C-e> :NERDTreeToggle<CR> 
"autocmd VimEnter * NERDTree
    "Ctrl-T to open/close Tagbar (need ctags)
nmap <C-t> :TagbarToggle<CR> 
nnoremap <Leader>t :CtrlPBufTag<CR>
nnoremap <Leader>r :RainbowParenthesesToggle<CR>
inoremap <C-a> <C-n>
"<c-n> autocomplete

au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"shortcuts for surround plugin--useful for HTML, XML editing
" press cs" ' inside phrase to change quotations around the phrase
" press ds" to remove delimiters entirely ("Hello World!" --> Hello World!)
" ysiw],ysiw}, etc while cursor on text object adds braces around word
" yssb or yss) wraps entire line in parentheses 
" ds reverts to original text: ({Hello } world!)->ds{ds)->Hello world! 
