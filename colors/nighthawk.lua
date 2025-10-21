-- Nighthawk colorscheme for Neovim (Lua)
-- Generated from Ghostty palette in this repo.
-- Place this file in: ~/.config/nvim/lua/colors/ or pack as a plugin under colors/.
-- Load via: vim.cmd('colorscheme nighthawk')

local palette = {
  bg        = '#161e26',
  fg        = '#c1cfdb',
  cursor    = '#79e6ec',
  sel       = '#374a5c',
  black0    = '#465566', -- 0
  red1      = '#df5a70', -- 1
  green2    = '#93dba4', -- 2
  yellow3   = '#e8c37a', -- 3
  blue4     = '#55afe6', -- 4
  magenta5  = '#bf3f7e', -- 5
  cyan6     = '#79e6ec', -- 6
  white7    = '#ffffff', -- 7
  bright8   = '#576779', -- 8
  bright9   = '#e56a7c', -- 9
  bright10  = '#9fe2af', -- 10
  bright11  = '#f1cf9e', -- 11
  bright12  = '#61b7ea', -- 12
  bright13  = '#cf3a78', -- 13
  bright14  = '#85edf1', -- 14
  bright15  = '#ffffff', -- 15
}

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.setup()
  vim.o.termguicolors = true

  -- Base UI
  hi('Normal',       { fg = palette.fg, bg = palette.bg })
  hi('NormalNC',     { fg = palette.fg, bg = palette.bg })
  hi('Cursor',       { fg = palette.bg, bg = palette.cursor })
  hi('CursorLine',   { bg = '#1d2630' })
  hi('CursorColumn', { bg = '#1d2630' })
  hi('LineNr',       { fg = '#4f5e6d', bg = palette.bg })
  hi('CursorLineNr', { fg = palette.fg, bold = true })
  hi('SignColumn',   { bg = palette.bg })
  hi('VertSplit',    { fg = '#27323d', bg = palette.bg })
  hi('WinSeparator', { fg = '#27323d', bg = palette.bg })
  hi('Pmenu',        { fg = palette.fg, bg = '#1d2630' })
  hi('PmenuSel',     { fg = palette.fg, bg = palette.sel, bold = true })
  hi('PmenuSbar',    { bg = '#1d2630' })
  hi('PmenuThumb',   { bg = '#2a3641' })
  hi('Visual',       { bg = palette.sel })
  hi('Search',       { fg = palette.bg, bg = palette.yellow3, bold = true })
  hi('IncSearch',    { fg = palette.bg, bg = palette.bright11, bold = true })
  hi('MatchParen',   { fg = palette.cyan6, bold = true })
  hi('ColorColumn',  { bg = '#1d2630' })
  hi('StatusLine',   { fg = palette.fg, bg = '#222d37' })
  hi('StatusLineNC', { fg = '#5d6b78', bg = '#222d37' })
  hi('TabLine',      { fg = '#5d6b78', bg = '#222d37' })
  hi('TabLineSel',   { fg = palette.fg, bg = palette.bg, bold = true })
  hi('TabLineFill',  { fg = '#5d6b78', bg = '#222d37' })
  hi('Folded',       { fg = '#6d7c89', bg = '#1d2630', italic = true })
  hi('FoldColumn',   { fg = '#4f5e6d', bg = palette.bg })
  hi('NonText',      { fg = '#384550' })
  hi('Whitespace',   { fg = '#384550' })
  hi('SpecialKey',   { fg = '#384550' })

  -- Diagnostics
  hi('Error',        { fg = palette.red1 })
  hi('ErrorMsg',     { fg = palette.red1, bold = true })
  hi('WarningMsg',   { fg = palette.yellow3 })
  hi('Warning',      { fg = palette.yellow3 })
  hi('MoreMsg',      { fg = palette.green2 })
  hi('ModeMsg',      { fg = palette.green2, bold = true })
  hi('Question',     { fg = palette.green2 })
  hi('Todo',         { fg = palette.yellow3, bold = true })
  hi('DiagnosticError', { fg = palette.red1 })
  hi('DiagnosticWarn',  { fg = palette.yellow3 })
  hi('DiagnosticInfo',  { fg = palette.blue4 })
  hi('DiagnosticHint',  { fg = palette.cyan6 })
  hi('DiagnosticUnderlineError', { undercurl = true, sp = palette.red1 })
  hi('DiagnosticUnderlineWarn',  { undercurl = true, sp = palette.yellow3 })
  hi('DiagnosticUnderlineInfo',  { undercurl = true, sp = palette.blue4 })
  hi('DiagnosticUnderlineHint',  { undercurl = true, sp = palette.cyan6 })

  -- Syntax (generic)
  hi('Comment',      { fg = '#546471', italic = true })
  hi('Identifier',   { fg = palette.cyan6 })
  hi('Function',     { fg = palette.blue4 })
  hi('Statement',    { fg = palette.magenta5 })
  hi('Conditional',  { fg = palette.magenta5 })
  hi('Repeat',       { fg = palette.magenta5 })
  hi('Exception',    { fg = palette.red1 })
  hi('Operator',     { fg = palette.cyan6 })
  hi('Keyword',      { fg = palette.magenta5 })
  hi('PreProc',      { fg = palette.yellow3 })
  hi('Include',      { fg = palette.yellow3 })
  hi('Define',       { fg = palette.yellow3 })
  hi('Macro',        { fg = palette.yellow3 })
  hi('Type',         { fg = palette.green2 })
  hi('StorageClass', { fg = palette.green2 })
  hi('Structure',    { fg = palette.green2 })
  hi('Typedef',      { fg = palette.green2 })
  hi('Constant',     { fg = palette.bright12 })
  hi('String',       { fg = palette.green2 })
  hi('Character',    { fg = palette.green2 })
  hi('Number',       { fg = palette.bright12 })
  hi('Boolean',      { fg = palette.bright12 })
  hi('Float',        { fg = palette.bright12 })
  hi('Special',      { fg = palette.cyan6 })
  hi('SpecialChar',  { fg = palette.cyan6 })
  hi('Tag',          { fg = palette.blue4 })
  hi('Delimiter',    { fg = palette.fg })
  hi('SpecialComment',{ fg = '#60707d', italic = true })
  hi('Underlined',   { underline = true })
  hi('Bold',         { bold = true })
  hi('Italic',       { italic = true })

  -- Diffs
  hi('DiffAdd',      { fg = palette.green2, bg = '#1b2a23' })
  hi('DiffChange',   { fg = palette.yellow3, bg = '#2a2a1d' })
  hi('DiffDelete',   { fg = palette.red1, bg = '#2b1d23' })
  hi('DiffText',     { fg = palette.blue4, bold = true, reverse = true })

  -- Git Signs (if gitsigns)
  hi('GitSignsAdd',    { fg = palette.green2 })
  hi('GitSignsChange', { fg = palette.yellow3 })
  hi('GitSignsDelete', { fg = palette.red1 })

  -- LSP semantic tokens (fallbacks)
  hi('@variable',      { fg = palette.fg })
  hi('@variable.builtin',{ fg = palette.cyan6, italic = true })
  hi('@parameter',     { fg = palette.fg })
  hi('@field',         { fg = palette.cyan6 })
  hi('@property',      { fg = palette.cyan6 })
  hi('@function',      { fg = palette.blue4 })
  hi('@function.builtin',{ fg = palette.blue4, italic = true })
  hi('@method',        { fg = palette.blue4 })
  hi('@keyword',       { fg = palette.magenta5 })
  hi('@keyword.return',{ fg = palette.magenta5 })
  hi('@type',          { fg = palette.green2 })
  hi('@type.builtin',  { fg = palette.green2, italic = true })
  hi('@constant',      { fg = palette.bright12 })
  hi('@string',        { fg = palette.green2 })
  hi('@number',        { fg = palette.bright12 })
  hi('@boolean',       { fg = palette.bright12 })
  hi('@operator',      { fg = palette.cyan6 })
  hi('@punctuation',   { fg = palette.fg })

  -- Treesitter incremental selection / misc may rely on Visual

  -- Terminal colors
  vim.g.terminal_color_0  = palette.black0
  vim.g.terminal_color_1  = palette.red1
  vim.g.terminal_color_2  = palette.green2
  vim.g.terminal_color_3  = palette.yellow3
  vim.g.terminal_color_4  = palette.blue4
  vim.g.terminal_color_5  = palette.magenta5
  vim.g.terminal_color_6  = palette.cyan6
  vim.g.terminal_color_7  = palette.white7
  vim.g.terminal_color_8  = palette.bright8
  vim.g.terminal_color_9  = palette.bright9
  vim.g.terminal_color_10 = palette.bright10
  vim.g.terminal_color_11 = palette.bright11
  vim.g.terminal_color_12 = palette.bright12
  vim.g.terminal_color_13 = palette.bright13
  vim.g.terminal_color_14 = palette.bright14
  vim.g.terminal_color_15 = palette.bright15

end

M.setup()

return M
