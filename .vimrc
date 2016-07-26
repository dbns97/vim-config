set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'xevz/vim-squirrel'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'sickill/vim-monokai'
Plugin 'Rip-Rip/clang_complete'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'cohama/lexima.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
colorscheme monokai
set t_Co=256
set term=screen-256color
set hidden

let mapleader=" "
let g:syntastic_c_config_file = '.clang_complete'
let g:syntastic_cpp_config_file = '.clang_complete'
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

set mouse=a
set number
set laststatus=2
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set backspace=2

" Key Mappings
" ---------------------------

map <leader>n :NERDTreeToggle<CR>

" Normal Mode
nnoremap <leader>v :e ~/.vimrc<CR>
nnoremap <leader>src :source ~/.vimrc<CR>
nnoremap <leader>tn :tabnew<space>
nnoremap <leader>tc :tabc<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :bd<CR>
nnoremap <leader>sh :split<space>
nnoremap <leader>sv :vsplit<space>
" Command Mode
cnoremap <ctrl>h <Left>
cnoremap <ctrl>l <Right>
cnoremap <ctrl>k <Up>
cnoremap <ctrl>j <Down>
cnoremap jf <esc>
cnoremap fj <esc>
" Insert Mode
inoremap jf <esc>
inoremap fj <esc>
" Visual Mode
vnoremap fj <esc>
vnoremap jf <esc>


" Languages
" ---------------------------
au BufNewFile,BufRead *.nut setf squirrel


" Auto Completion
" ---------------------------
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
