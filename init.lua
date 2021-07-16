require('plugins')

local o = vim.o
o.number = true
o.relativenumber = true
o.shiftwidth = 2
o.mouse = 'nv'
o.expandtab = true
o.swapfile = false
o.signcolumn = 'number'


local map = vim.api.nvim_set_keymap
map('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true })
map('n', '<C-p>', ':Telescope find_files<CR>', { noremap = true })


require('language_server')
require('compe_setting')

-- vim.o.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])


require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
