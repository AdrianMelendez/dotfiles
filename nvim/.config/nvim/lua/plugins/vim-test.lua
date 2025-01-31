return {
  "vim-test/vim-test",
  dependencies = {
   -- "preservim/vimux"
  },
  config = function()
    vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", {})
    vim.keymap.set("n", "<leader>T", ":TestFile<CR>", {})
    vim.keymap.set("n", "<leader>a", ":TestSuite<CR>", {})
    vim.keymap.set("n", "<leader>tl", ":TestLast<CR>", {})
    vim.keymap.set("n", "<leader>g", ":TestVisit<CR>", {})
    vim.cmd("let test#strategy = 'neovim'")
    vim.g["test#cpp#catch2#file_pattern"] = '\\v.*[tT]ests?(\\.cpp)$'
    vim.g["test#cpp#catch2#make_command"] = "ctest"
  end,
}
