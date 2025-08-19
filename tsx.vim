" ~/.vim/ftplugin/tsx.vim
if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

" treat .tsx as TypeScript+JSX
setlocal filetype=typescriptreact

" match your project’s tab settings:
setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" reuse built-in syntax and indent rules
runtime! syntax/typescript.vim
runtime! syntax/jsx.vim
runtime! indent/typescript.vim
runtime! indent/javascript.vim

