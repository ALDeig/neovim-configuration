vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<ESC>")
-- buffers
vim.keymap.set("n", "H", ":bp<Enter>")
vim.keymap.set("n", "L", ":bn<Enter>")
vim.keymap.set("n", "<leader>x", ":bd<Enter>")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/aldi/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
vim.keymap.set("n", ",<space>", "<cmd>:nohlsearch<CR>")


-- autocmd FileType python map <buffer> <C-h> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
-- autocmd FileType python imap <buffer> <C-h> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>
-- vim.api.nvim_create_autocmd(
--     "FileType",
--     { pattern = { "python" }, command = [[map <buffer><C-h> :exec '!python' shellescape(@%, 1) <CR> ]]}
-- )
vim.api.nvim_create_autocmd(
    "FileType",
    { pattern = {"python"}, command = [[map <buffer><C-h> :FloatermNew --wintype=split --height=0.4 --autoclose=0 python % <CR>]]}
)
-- vim.api.nvim_create_autocmd(
--     "FileType",
--     { pattern = { "python" }, command = [[imap <buffer> <C-h> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR> ]]}
-- )
-- vim.api.nvim_create_autocmd(
--     "TermOpen",
--     { pattern = {"*"}, command = [[tmap <buffer> <Esc> <C-\><C-n>]] }
-- )

