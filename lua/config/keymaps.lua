-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Invert explorer scope ------------------------------------------------------
--
vim.keymap.set("n", "<leader>e", function()
  Snacks.explorer()
end, { desc = "Explorer Snacks (cwd)" })
--
vim.keymap.set("n", "<leader>E", function()
  Snacks.explorer({ cwd = LazyVim.root() })
end, { desc = "Explorer Snacks (Root Dir)" })

-- Remap formatting for better ergonomics -------------------------------------
--
vim.keymap.set("n", "<leader>cv", function()
  LazyVim.format({ force = true }) -- Same as LazyVim's manual formatting
end, { desc = "Format" })
