-- Bootstrapping packer
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- Plugins
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'preservim/nerdtree'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'
  use 'mattn/emmet-vim'
  -- use 'elixir-editors/vim-elixir'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'gruvbox-community/gruvbox'
  use { 'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use {'junegunn/fzf', run = function() vim.fn['fzf#install()'](0) end }
  use 'junegunn/fzf.vim'

  -- language server configurations
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'

  -- autocomplete and snippets
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'

  -- getgu
  use 'ThePrimeagen/vim-be-good'

  -- github copilot
  use 'github/copilot.vim'

  -- harpoon
  use 'nvim-lua/plenary.nvim'
  use 'ThePrimeagen/harpoon'

end)

