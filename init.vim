syntax on
filetype plugin indent on

set nohlsearch
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set relativenumber
set nu rnu





call plug#begin()

Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()




" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


nnoremap <SPACE> <Nop>
let mapleader = " "

nnoremap <leader>w :w <CR>
nnoremap <leader>q :q <CR>
nnoremap <leader>q1 :q! <CR>
nnoremap <leader>wq :wq <CR>
nnoremap <leader><leader> :
nnoremap <leader>5 :source % <CR>
nnoremap <C-p> :Files <CR>



nnoremap <leader>t :wincmd r <CR> 
nnoremap <leader>l :wincmd l <CR> 
nnoremap <leader>h :wincmd h <CR> 
nnoremap <leader>j :wincmd j <CR> 
nnoremap <leader>k :wincmd k <CR> 
nnoremap <leader>p :Ex <CR> 
nnoremap <leader>e :w !python <CR>


nnoremap <leader>s :vsplit <CR> 
nnoremap <leader>d :split<CR>


let g:fzf_layout = { 'window':  {'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

colorscheme dracula
set background=dark

"emmet config"
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red

hi Normal guibg=NONE ctermbg=NONE
