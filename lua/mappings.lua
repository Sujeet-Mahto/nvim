local map = vim.keymap.set
local default_options = { silent = true }
local expr_options = { expr = true, silent = true }

--Remap space as leader key
map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "

map("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_options)
map("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_options)

map("i", "jk", "<ESC>", default_options)
map("i", "kj", "<ESC>", default_options)

-- For running scripts
map({"i", "n"}, "<F10>", ":w<CR>:!clang++ %<CR>:!./a.out<CR>")
