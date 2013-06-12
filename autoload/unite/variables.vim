"=============================================================================
" FILE: variables.vim
" AUTHOR: Shougo Matsushita <Shougo.Matsu@gmail.com>
" Last Modified: 12 Jun 2013.
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
"=============================================================================

let s:save_cpo = &cpo
set cpo&vim

function! unite#variables#current_unite() "{{{
  if !exists('s:current_unite')
    let s:current_unite = {}
  endif

  return s:current_unite
endfunction"}}}

function! unite#variables#set_current_unite(unite) "{{{
  let s:current_unite = a:unite
endfunction"}}}

function! unite#variables#options() "{{{
  if !exists('s:options')
    let s:options = [
          \ '-buffer-name=', '-profile-name=', '-input=', '-prompt=',
          \ '-default-action=', '-start-insert',
          \ '-no-start-insert', '-no-quit',
          \ '-winwidth=', '-winheight=',
          \ '-immediately', '-no-empty',
          \ '-auto-preview', '-auto-highlight', '-complete',
          \ '-vertical', '-horizontal', '-direction=', '-no-split',
          \ '-verbose', '-auto-resize',
          \ '-toggle', '-quick-match', '-create',
          \ '-cursor-line-highlight=', '-no-cursor-line',
          \ '-update-time=', '-hide-source-names', '-hide-status-line',
          \ '-max-multi-lines=', '-here', '-silent', '-keep-focus',
          \ '-auto-quit', '-no-focus',
          \ '-long-source-names', '-short-source-names',
          \ '-multi-line', '-resume', '-wrap', '-select=', '-log',
          \ '-truncate',
          \]
  endif

  return s:options
endfunction"}}}

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: foldmethod=marker
