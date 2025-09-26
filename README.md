# Nighthawk — Neovim color theme

A lightweight, opinionated color theme for Neovim.

This repository provides a single colorscheme file at `colors/nighthawk.lua`. The README below explains how to install, enable, and optionally customize the theme in both Lua and Vimscript based Neovim configurations.

## Quick start

1. Make sure the `colors/nighthawk.lua` file is present in your runtime path (if you cloned this repo into a plugin manager it will be handled automatically).
2. In your Neovim configuration enable true color and set the colorscheme.

Lua (`init.lua`):

```lua
-- enable 24-bit color support
vim.o.termguicolors = true

-- set background (optional, default is dark)
vim.o.background = 'dark' -- or 'light'

-- enable the colorscheme
vim.cmd('colorscheme nighthawk')
```

Vimscript (`init.vim`):

```vim
set termguicolors
set background=dark " or light
colorscheme nighthawk
```

## Installation

There are two common ways to install the theme: using a plugin manager, or manually copying the `colors/` file into your Neovim config.

1. Plugin manager (recommended)

Examples below use a placeholder `username/repo` — replace with the actual repository when installing from GitHub.

- packer.nvim

```lua
use {'username/repo', as = 'nighthawk-syntax-neovim'}
```

- lazy.nvim

```lua
require('lazy').setup({
  {'username/repo', name = 'nighthawk-syntax-neovim'},
})
```

- vim-plug

```vim
Plug 'username/repo'
```

After installing with your plugin manager, run `:PackerSync`, `:Lazy sync`, or `:PlugInstall` as appropriate and then add `colorscheme nighthawk` to your config.

2. Manual install

Copy the `colors/nighthawk.lua` file into your Neovim config `colors/` folder, for example:

```bash
# create colors directory if needed
mkdir -p ~/.config/nvim/colors
cp colors/nighthawk.lua ~/.config/nvim/colors/
```

Then add `colorscheme nighthawk` to your config as shown in Quick start.

## Customization

Because this theme is a plain colorscheme file, you can tweak highlights after the theme loads.

Examples (Lua):

```lua
-- Make background transparent
vim.cmd('colorscheme nighthawk')
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })

-- Override a single highlight group
vim.api.nvim_set_hl(0, 'Comment', { fg = '#6A7A89', italic = true })
```

Place these lines after your `colorscheme nighthawk` call so your overrides are applied last.

## Troubleshooting

- Theme not found: ensure `nighthawk.lua` is located in a `colors/` folder on your runtimepath. You can check runtimepath in Neovim with `:echo &rtp`.
- Colors look wrong (256-color terminal): make sure your terminal supports truecolor and that `termguicolors` is enabled (`set termguicolors` or `vim.o.termguicolors = true`).
- Still not applying: try `:set background=dark` or `:set background=light` before `colorscheme nighthawk`.

## Notes & assumptions

- This README assumes you're using Neovim and that the file `colors/nighthawk.lua` is the theme implementation present in this repo.
- If your setup uses a theme plugin with a setup function, check that plugin's README for additional options — this theme is provided as a vanilla colorscheme file and does not require a setup call.

## Contributing

If you want to tweak colors or add variants, open a PR. Keep the colorscheme file in `colors/nighthawk.lua` and include a short description of the change.

## License

Include a license file or add a license line here (for example: MIT). If you don't want to pick a license yet, consider adding one before publishing.

## Checklist

- Write README explaining how to use the theme: Done

If you'd like, I can also:

- add a minimal `package.json` or plugin manifest for common plugin managers (not usually required for a colorscheme file),
- add more specific install examples for the exact GitHub repo name (if you tell me the repo owner/name), or
- add a short demo gif or screenshot to the README.

---

If you want me to push this README into a particular branch or create a GitHub release text, tell me which remote and branch to use.
