require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },
})


vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<Enter>")
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<Enter>")
vim.keymap.set("n", "<leader>ft", ":NvimTreeFindFile<Enter>")
