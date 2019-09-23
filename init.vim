" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

Plug 'jelera/vim-javascript-syntax'
Plug 'beyondmarc/glsl.vim'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'leshill/vim-json'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-commentary'
" gcc or gc
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'thaerkh/vim-indentguides'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()


" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL


" =========================================================================
" beau
" =========================================================================
set hidden
set number
let mapleader = ","
syntax on

if has('nvim') || has('termguicolors')
  set termguicolors
endif
colors gruvbox 
" colors Alduin


" ale stuff
" let g:ale_fixers = {}
" let g:ale_fixers.javascript = ['eslint']
" let g:ale_fix_on_save = 1

" airline stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'


" =================================
" Editing
" =================================
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" =================================
" Nvim 
" =================================

" better splitting windows
noremap <C-w>- :split<cr>
noremap <C-w>\| :vsplit<cr>


" =================================
" Plugins
" =================================

" Indent guide display
" let g:indent_guides_enable_on_vim_startup = 1
" autocmd VimEnter * :IndentGuidesEnable
" hi IndentGuidesOdd  ctermbg=darkgray
" hi IndentGuidesEven ctermbg=gray

" open a NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1

let g:javascript_plugin_flow = 1

" open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" ctrl movement keys to get around
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" move among buffers with CTRL
map <C-L> :bnext<CR>
map <C-H> :bprev<CR>
map <C-J> :bp<bar>sp<bar>bn<bar>bd<CR>

" clear the highlighted search terms easily
" used as [normal mode] :C
command C let @/=""

" userful stuff H M L to move cursor z[return], z., z- for top middle bottom
" can also use gv to reselect a visual section that you just made
" can find forward in a line with f and backward in a line with F
" the file preview on the right of the file is called a mini map
" severin-lemaignan/vim-minimap might be a good plug for it
