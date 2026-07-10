return {
  { "folke/tokyonight.nvim", lazy = true },
  { "catppuccin/nvim", name = "catppuccin", lazy = true },
  { "rebelot/kanagawa.nvim", lazy = true },
  { "ellisonleao/gruvbox.nvim", lazy = true },
  { "EdenEast/nightfox.nvim", lazy = true },
  { "rose-pine/neovim", name = "rose-pine", lazy = true },
  { "sainnhe/everforest", lazy = true },
  { "navarasu/onedark.nvim", lazy = true },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = true,
    opts = {
      transparent = true, -- esto activa el fondo transparente
      saturation = 0.5,
      terminal_colors = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-wave",
    },
  },
}
