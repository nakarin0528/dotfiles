call plug#begin(expand('~/.vim/bundle/'))
" ============
"    SYSTEM
" ------------
" - global
Plug 'scrooloose/nerdtree'
            \ | Plug 'jistr/vim-nerdtree-tabs'
Plug 'neomake/neomake'
Plug 'bronson/vim-visual-star-search'

" - python
Plug 'davidhalter/jedi-vim', {'for': 'python'}

" - javascript
Plug '1995eaton/vim-better-javascript-completion', {'for': 'javascript'}

" - markdown
Plug 'kannokanno/previm', {'for': 'markdown'}
Plug 'godlygeek/tabular', {'for': 'markdown'}

" - sequence diagram
Plug 'xavierchow/vim-sequence-diagram', {'for': 'sequence'}


" ================
"    APPEARANCE
" ----------------
Plug 'https://bitbucket.org/matsub/vim-statusline.git'
Plug 'https://bitbucket.org/matsub/vim-binary.git'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'flazz/vim-colorschemes'


" ============
"    SYNTAX
" ------------
" - python
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
Plug 'lepture/vim-jinja'

" - html5 & css3 & markdown
Plug 'hail2u/vim-css3-syntax', {'for': ['css', 'scss', 'vue']}
Plug 'othree/html5-syntax.vim', {'for': ['html', 'markdown', 'vue']}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}

" - ES6
Plug 'othree/yajs.vim', {'for': ['javascript', 'vue']}
" --- Vue.js
Plug 'posva/vim-vue'

" - Haskell
Plug 'kana/vim-filetype-haskell', {'for': 'haskell'}

" - uiflow
Plug 'matsub/uiflow.vim'

" - nginx
Plug 'vim-scripts/nginx.vim'
call plug#end()
filetype plugin indent on


" ================================
"    CONFIGURATIONS FOR PLUGINS
" --------------------------------
" NERDTree
" --------
nnoremap <silent><C-e> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=2

" neomake
" -------
autocmd! BufWritePost * Neomake

" vim-indent-guides
" -----------------
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=240
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=238
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1

" plugged colorscheme
" -------------------
colorscheme gruvbox
