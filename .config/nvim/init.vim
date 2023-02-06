set title
set ruler
set number
set cursorline
" set cursorcolumn

" Save undo history
set undofile

" Spelling
map <F8> :setlocal spell! spelllang=en_US<CR>

" Show tab
set list listchars=nbsp:¬,tab:»·,trail:·,extends:>

" F5 to clear white space
nnoremap <silent> <F5> :%s/\s\+$//<cr>

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale' " syntax checking and semantic errors

Plug 'tpope/vim-commentary' " cg to comment lines in visual mode

Plug 'Mofiqul/dracula.nvim' " color scheme

Plug 'neoclide/coc.nvim' " conquer of completion

" Plug 'github/copilot.vim' " AI code generation

call plug#end()

" Enter to autocomplete suggestions
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" colorscheme dracula

