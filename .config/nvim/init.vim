call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'airblade/vim-gitgutter'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'glepnir/oceanic-material'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'cocopon/iceberg.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
Plug 'KeitaNakamura/tex-conceal.vim'
call plug#end()

set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

set number
set relativenumber
set tabstop=2
set shiftwidth=2

inoremap <Tab> <Esc>
nmap <C-n> :NERDTreeToggle<CR>
vmap \\ <plug>NERDCommenterToggle
nmap \\ <plug>NERDCOmmenterToggle

" Code Folding
" set foldmethod=syntax " Folding based on indentation.
" set foldenable

" nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
" vnoremap <Space> zf

" DVC
autocmd! BufNewFile,BufRead Dvcfile,*.dvc,dvc.lock setfiletype yaml

" Latex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0

set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Snippets
" ---
" Specify the path to my snippets 
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

set background=dark
colorscheme palenight

let g:airline_theme = "palenight"
