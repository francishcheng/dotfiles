filetype plugin on
syntax on
set background=dark

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'   
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'connorholyday/vim-snazzy'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ianding1/leetcode.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required

" NERDTree configuration
let NERDTreeHighlightCursorline = 1       " 高亮当前行
let NERDTreeShowLineNumbers     = 1       " 显示行号
let NERDTreeIgnore = [ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.egg$', '^\.git$', '^\.repo$', '^\.svn$', '^\.hg$' ]
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end
" NERDTree configuration

" 设置搜索
set backspace=2
exec "nohlsearch"
set incsearch
set hlsearch
set ignorecase
set smartcase
set cursorline
set relativenumber
set clipboard+=unnamed
set mouse=c
set nocompatible            " be iMproved, required
set wildmenu       	    " 设置提示菜单
set splitbelow
set cuc    "设置竖直标尺
noremap = nzz
noremap - Nzz
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map s <nop>
map J 0
map K $
map m ysiw

"jedi 
let g:jedi#documentation_command = "L"
" vim leetcode
let g:leetcode_solution_filetype = "cpp"
let g:leetcode_browser = "chrome"
let g:leetcode_china=1
nnoremap <leader>ll :LeetCodeList<cr>
nnoremap <leader>lt :LeetCodeTest<cr>
nnoremap <leader>ls :LeetCodeSubmit<cr>
nnoremap <leader>li :LeetCodeSignIn<cr>
