" Vim color file
" Name: kefo.vim
" Maintainer: Kenneth Smith <kenstcyr@yahoo.com>
" Created: Wed Jan 12 13:54:48 PST 2011
"
" This is a 256 color theme for xterm-256color

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "kefo"

hi Normal           ctermfg=254 ctermbg=NONE cterm=NONE
hi SpecialKey       ctermfg=127 ctermbg=NONE cterm=NONE
hi NonText          ctermfg=28 ctermbg=NONE cterm=NONE
hi PreProc          ctermfg=77 ctermbg=NONE cterm=NONE

hi Cursor           ctermfg=130 ctermbg=NONE cterm=NONE
hi CursorLine       ctermfg=NONE ctermbg=NONE cterm=underline
hi CursorColumn     ctermfg=NONE ctermbg=234 cterm=NONE

hi DiffAdd          ctermfg=NONE ctermbg=22 cterm=NONE
hi DiffDelete       ctermfg=NONE ctermbg=52 cterm=NONE
hi DiffChange       ctermfg=NONE ctermbg=17 cterm=NONE
hi DiffText         ctermfg=NONE ctermbg=NONE cterm=underline

hi ModeMsg          ctermfg=65 ctermbg=NONE cterm=NONE
hi MoreMsg          ctermfg=65 ctermbg=NONE cterm=NONE
hi Question         ctermfg=65 ctermbg=NONE cterm=NONE

hi Pmenu            ctermfg=16 ctermbg=23 cterm=NONE
hi PmenuSel         ctermfg=65 ctermbg=23 cterm=NONE
hi PmenuSbar        ctermfg=16 ctermbg=23 cterm=NONE
hi PmenuThumb       ctermfg=65 ctermbg=23 cterm=NONE

hi IncSearch        ctermfg=209 ctermbg=88 cterm=NONE
hi Search           ctermfg=209 ctermbg=88 cterm=NONE
"hi NonText ctermfg=38 ctermbg=NONE cterm=NONE
hi Visual           ctermfg=231 ctermbg=60 cterm=NONE
hi Error            ctermfg=231 ctermbg=88 cterm=NONE

hi FoldColumn       ctermfg=88 ctermbg=NONE cterm=NONE
hi Folded           ctermfg=108 ctermbg=23 cterm=NONE

hi StatusLineNC     ctermfg=94 ctermbg=NONE cterm=NONE
hi StatusLine       ctermfg=72 ctermbg=NONE cterm=NONE
hi VertSplit        ctermfg=16 ctermbg=23 cterm=NONE

" Tab menu
hi TabLineSel       ctermfg=208 ctermbg=NONE cterm=NONE
hi TabLineFill      ctermfg=94 ctermbg=236 cterm=underline
hi TabLine          ctermfg=94 ctermbg=236 cterm=underline

hi Comment          ctermfg=72 ctermbg=NONE cterm=NONE
hi Todo             ctermfg=78 ctermbg=94 cterm=NONE

hi String           ctermfg=114 ctermbg=NONE cterm=NONE
"hi Character ctermfg=65 ctermbg=NONE cterm=NONE
hi Number           ctermfg=250 ctermbg=NONE cterm=NONE
hi Boolean          ctermfg=250 ctermbg=NONE cterm=NONE
hi Float            ctermfg=250 ctermbg=NONE cterm=NONE
hi Constant         ctermfg=250 ctermbg=NONE cterm=NONE

hi Identifier       ctermfg=254 ctermbg=NONE cterm=NONE
hi Function         ctermfg=254 ctermbg=NONE cterm=NONE

hi Define           ctermfg=75 ctermbg=NONE cterm=NONE
hi Statement        ctermfg=75 ctermbg=NONE cterm=NONE
hi Conditional      ctermfg=75 ctermbg=NONE cterm=NONE
hi Repeat           ctermfg=75 ctermbg=NONE cterm=NONE
hi Label            ctermfg=75 ctermbg=NONE cterm=NONE

hi Operator         ctermfg=69 ctermbg=NONE cterm=NONE

hi Include          ctermfg=75 ctermbg=NONE cterm=NONE
hi Type             ctermfg=75 ctermbg=NONE cterm=NONE
hi StorageClass     ctermfg=75 ctermbg=NONE cterm=NONE
hi Structure        ctermfg=75 ctermbg=NONE cterm=NONE
hi Typedef          ctermfg=75 ctermbg=NONE cterm=NONE

hi Special          ctermfg=28 ctermbg=NONE cterm=NONE
hi SpecialChar      ctermfg=28 ctermbg=NONE cterm=NONE
" hi Delimiter ctermfg=88 ctermbg=NONE cterm=NONE

