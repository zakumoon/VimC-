
"Cpp"
syntax on
filetype plugin indent on
set ts=2 sts=2 sw=2 et ai si
set rnu
call plug#begin()

Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/gruvbox-community/gruvbox'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/kaicataldo/material.vim'
Plug 'https://github.com/dracula/vim'


call plug#end()

" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

"Gruvbox color scheme
set termguicolors
colo gruvbox

"airline themes
let g:airline_themes='material'

inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>

" vim-powered terminal in split window
map <Leader>t :term ++close<cr>
tmap <Leader>t <c-w>:term ++close<cr>

" vim-powered terminal in new tab
map <Leader>T :tab term ++close<cr>
tmap <Leader>T <c-w>:tab term ++close<cr>
