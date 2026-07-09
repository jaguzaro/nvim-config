-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<leader>ct", function()
  local ok, picker = pcall(function()
    return require("snacks.picker").get({ source = "explorer" })[1]
  end)

  if ok and picker then
    local item = picker:current()
    if item and item.file then
      local dir = item.file
      if not item.dir then
        dir = vim.fn.fnamemodify(dir, ":h")
      end
      Snacks.terminal(nil, { cwd = dir })
      return
    end
  end

  Snacks.terminal()
end, { desc = "Terminal en carpeta del explorer" })
