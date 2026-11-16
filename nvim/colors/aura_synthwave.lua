-- Aura Dracula Spirit (SynthWave) for Neovim
-- Source: user-provided original VS Code theme; no plugins required.
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') == 1 then vim.cmd('syntax reset') end
vim.g.colors_name = 'aura_synthwave'

local p = {
  bg='#262335', fg='#edecee', muted='#adacae', dim='#64548e',
  surface='#231a2d', selection='#3d375e', accent='#a277ff',
  pink='#f694ff', mint='#61ffca', gold='#ffca85', red='#ff6767',
  cyan='#82e2ff', lavender='#a277ff', dark='#140e1a'
}
local function hi(group, opts) vim.api.nvim_set_hl(0, group, opts) end
hi('Normal', { fg=p.fg, bg=p.bg })
hi('NormalFloat', { fg=p.fg, bg=p.surface })
hi('FloatBorder', { fg=p.accent, bg=p.surface })
hi('ColorColumn', { bg=p.surface })
hi('CursorLine', { bg=p.surface })
hi('CursorLineNr', { fg=p.accent, bold=true })
hi('LineNr', { fg=p.dim })
hi('SignColumn', { bg=p.bg })
hi('Visual', { bg=p.selection })
hi('Search', { fg=p.dark, bg=p.gold })
hi('IncSearch', { fg=p.dark, bg=p.pink })
hi('MatchParen', { fg=p.mint, bold=true, underline=true })
hi('StatusLine', { fg=p.accent, bg=p.surface })
hi('StatusLineNC', { fg=p.dim, bg=p.surface })
hi('VertSplit', { fg=p.surface })
hi('WinSeparator', { fg=p.surface })
hi('Pmenu', { fg=p.fg, bg=p.surface })
hi('PmenuSel', { fg=p.dark, bg=p.accent })
hi('Directory', { fg=p.accent, bold=true })
hi('Title', { fg=p.accent, bold=true })
hi('ErrorMsg', { fg=p.red })
hi('WarningMsg', { fg=p.gold })
hi('DiagnosticError', { fg=p.red })
hi('DiagnosticWarn', { fg=p.gold })
hi('DiagnosticInfo', { fg=p.cyan })
hi('DiagnosticHint', { fg=p.mint })
hi('DiffAdd', { fg=p.mint, bg=p.surface })
hi('DiffChange', { fg=p.gold, bg=p.surface })
hi('DiffDelete', { fg=p.red, bg=p.surface })
hi('Comment', { fg=p.dim, italic=true })
hi('Constant', { fg=p.mint })
hi('String', { fg=p.mint })
hi('Character', { fg=p.mint })
hi('Number', { fg=p.mint })
hi('Boolean', { fg=p.mint })
hi('Identifier', { fg=p.fg })
hi('Function', { fg=p.gold })
hi('Statement', { fg=p.accent })
hi('Conditional', { fg=p.pink })
hi('Repeat', { fg=p.pink })
hi('Keyword', { fg=p.accent })
hi('Exception', { fg=p.pink })
hi('PreProc', { fg=p.accent })
hi('Type', { fg=p.cyan })
hi('StorageClass', { fg=p.accent })
hi('Special', { fg=p.pink })
hi('Underlined', { fg=p.accent, underline=true })
hi('Todo', { fg=p.dark, bg=p.gold, bold=true })
hi('Error', { fg=p.red, bold=true })
hi('Operator', { fg=p.pink })
hi('Delimiter', { fg=p.pink })
-- Treesitter highlight groups take effect if you add Treesitter later.
local captures = {
  ['@comment']=p.dim, ['@string']=p.mint, ['@number']=p.mint,
  ['@boolean']=p.mint, ['@constant']=p.mint, ['@variable']=p.fg,
  ['@function']=p.gold, ['@function.call']=p.gold, ['@function.builtin']=p.gold,
  ['@type']=p.cyan, ['@type.builtin']=p.cyan,
  ['@keyword']=p.accent, ['@keyword.import']=p.pink,
  ['@keyword.repeat']=p.pink, ['@keyword.conditional']=p.pink,
  ['@operator']=p.pink, ['@punctuation.delimiter']=p.pink,
  ['@property']=p.pink, ['@attribute']=p.pink,
  ['@tag']=p.accent, ['@tag.attribute']=p.pink,
}
for name, fg in pairs(captures) do hi(name, {fg=fg}) end
