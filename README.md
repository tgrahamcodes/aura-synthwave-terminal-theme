# Aura Dracula Spirit — Synthwave Terminal Colors

A community color-only port of the **Aura Dracula Spirit (Synthwave)** VS Code theme for **WezTerm, Starship, eza, lf, bat, Neovim, fzf, and Zsh syntax highlighting**.

The theme keeps the original dark purple `#262335` background and uses a **pink → purple → mint** Powerline gradient. The Powerline in `starship/powerline-example.toml` is deliberately compact; `starship/palette.toml` can be merged into an existing prompt without replacing its modules or icons.

## Colors

| Role | Hex |
|---|---|
| Background | `#262335` |
| Text | `#edecee` |
| Pink | `#f694ff` |
| Purple | `#a277ff` |
| Mint | `#61ffca` |
| Cyan | `#82e2ff` |
| Gold | `#ffca85` |
| Coral | `#ff6767` |

**Powerline stops:** `#f477ff` → `#d377ff` → `#b277ff` → `#9592f4` → `#7bc9df` → `#61ffca`. The intermediate stops are custom interpolated colors, not direct source-theme values.

## Files

```text
aura-synthwave-terminal-theme/
├── wezterm/colors/Aura-Dracula-Spirit-Synthwave.toml
├── wezterm/wezterm.lua.example
├── starship/palette.toml
├── starship/powerline-example.toml
├── eza/theme.yml
├── eza/colors.zsh
├── lf/colors
├── bat/themes/Aura Dracula Spirit Synthwave.tmTheme
├── nvim/colors/aura_synthwave.lua
├── zsh/syntax-colors.zsh
└── fzf/colors.zsh
```

## Install only the colors you want

Back up any existing theme file before copying. **Nothing here includes personal dotfiles, machine paths, private data, installer scripts, or fonts.** Keep your existing keybindings, aliases and general configurations.

### WezTerm

```sh
mkdir -p ~/.config/wezterm/colors
cp wezterm/colors/*.toml ~/.config/wezterm/colors/
```

In your existing `~/.wezterm.lua` (or `~/.config/wezterm/wezterm.lua`), set `config.color_scheme = 'Aura Dracula Spirit Synthwave'` before `return config`. Do **not** paste the TOML `[metadata]` section into Lua or Starship. Lua comments use `--`, not `#`. No font installation is included.

### Starship

For your existing Powerline, append **only** the contents of `starship/palette.toml` to `~/.config/starship.toml`, and set the root key:

```toml
palette = 'aura_dracula_spirit_synthwave'
```

The six color names in this palette (`red`, `peach`, `yellow`, `green`, `sapphire`, `lavender`) map to the six segments in the original Powerline format. If you want a standalone reference prompt, use `starship/powerline-example.toml`, but don't replace your existing config unless that's intentional.

### eza

On macOS, eza often looks under `~/Library/Application Support/eza`. To use a consistent path across platforms, create `~/.config/eza` and set `EZA_CONFIG_DIR` to it:

```sh
mkdir -p ~/.config/eza
cp eza/theme.yml ~/.config/eza/theme.yml
export EZA_CONFIG_DIR="$HOME/.config/eza"
```

If you already export `EZA_COLORS` or `LS_COLORS`, those take precedence over `theme.yml`. Remove those overrides to see the YAML theme, **or** source `eza/colors.zsh` as a stand-alone alternative. Keep your own eza aliases.

### lf

```sh
mkdir -p ~/.config/lf
cp lf/colors ~/.config/lf/colors
```

This repository includes only the `lf` color table. Existing icons, previewers and keybindings stay untouched.

### bat

```sh
mkdir -p "$(bat --config-dir)/themes"
cp 'bat/themes/Aura Dracula Spirit Synthwave.tmTheme' "$(bat --config-dir)/themes/"
bat cache --build
```

Use `bat --theme 'Aura Dracula Spirit Synthwave' FILE` or set `BAT_THEME` in your shell. The theme is derived from the source VS Code token colors.

### Neovim

```sh
mkdir -p ~/.config/nvim/colors
cp nvim/colors/aura_synthwave.lua ~/.config/nvim/colors/
```

In your existing `init.lua`, add `vim.cmd.colorscheme('aura_synthwave')` **after** other theme settings. No plugin is required for the included highlight groups.

### fzf / Zsh (optional)

Source `fzf/colors.zsh` to color fzf without changing its keybindings. If you already have `zsh-syntax-highlighting` installed, source `zsh/syntax-colors.zsh` **after** that plugin is initialized. These files only set color variables.

## Scope and attribution

- This is an **unofficial port**, not endorsed by the original theme author.
- Upstream VS Code theme: [José Murillo — aura-spirit-dracula](https://github.com/josemurilloc/aura-spirit-dracula).
- The original source archive includes the MIT license with **Copyright (c) 2016 Dracula Theme**. Its license is retained in this repository as `LICENSE`.
- The adapted configurations and Powerline interpolation are distributed under those MIT terms.
- No fonts are bundled; using Nerd Font icons depends on fonts available in your terminal.
