" ===
" === vim-choosewin
" ===

nmap -         <Plug>(choosewin)
map <Leader>- :<C-u>ChooseWinSwapStay<CR>

" ===
" === accelerated-jk
" ===

nmap <silent> j <Plug>(accelerated_jk_gj)
nmap <silent> k <Plug>(accelerated_jk_gk)

" ===
" === vim-cool
" ===

let g:CoolTotalMatches = 1

" ===
" === lazygit.nvim
" ===

nnoremap <silent> <leader>lg :LazyGit<CR>

" ===
" === vim-floaterm
" ===

let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_width         = 0.8
let g:floaterm_height        = 0.8

" ===
" === leetcode.vim
" ===

let g:leetcode_china = 1
let g:leetcode_solution_filetype = 'javascript'
let g:leetcode_browser = 'chrome'

nnoremap <leader>ll :LeetCodeList<cr>
nnoremap <leader>lt :LeetCodeTest<cr>
nnoremap <leader>ls :LeetCodeSubmit<cr>
nnoremap <leader>li :LeetCodeSignIn<cr>

" ===
" === vim-vue
" ===

let g:vue_pre_processors = 'detect_on_enter'

" ===
" === fzf.vim
" ===

command! -bang -nargs=* Rg
    \ call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case '
    \ . (len(<q-args>) > 0 ? <q-args> : '""'), 0,
    \ fzf#vim#with_preview({'options': ['--delimiter=:', '--nth=2..', '--info=inline']}), <bang>0)

nnoremap <silent> <Leader>F :Files<CR>
nnoremap <silent> <Leader>C :Colors<CR>
nnoremap <silent> <Leader>B :Buffers<CR>
nnoremap <silent> <Leader>L :Lines<CR>

" ===
" === vim-airline
" ===

let g:airline#extensions#tabline#enabled = 1

" ===
" === vimwiki
" ===

let g:vimwiki_listsyms = '✗○◐●✓'
let g:vimwiki_ext2syntax = {}

" ===
" === vim-closetag
" ===

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx'

" ===
" === nerdcommenter
" ===

let g:NERDSpaceDelims = 1

" ===
" === vim-gitgutter
" ===

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

" ===
" === coc.nvim
" ===

let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'
let g:coc_status_error_sign = '•'
let g:coc_status_warning_sign = '•'
let g:coc_disable_transparent_cursor = 1

let g:coc_global_extensions =[
    \ 'coc-tsserver',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-vimlsp',
    \ 'coc-snippets',
    \ 'coc-emmet',
    \ 'coc-json',
    \ 'coc-emoji',
    \ 'coc-lists',
    \ 'coc-yaml',
    \ 'coc-tabnine',
    \ 'coc-gitignore',
    \ 'coc-yank',
    \ 'coc-actions',
    \ 'coc-db',
    \ 'coc-prettier',
    \ 'coc-vetur',
    \ 'coc-explorer',
    \ 'coc-cssmodules',
    \ 'coc-eslint',
    \ 'coc-styled-components'
    \]

augroup MyAutoCmd
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

"Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" coc-prettier

command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" coc-explorer

nmap <leader>e :CocCommand explorer<CR>

" vim: set ts=2 sw=2 tw=80 noet :

