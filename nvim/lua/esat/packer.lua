


-- This file can be loaded by calling `lua require('plugins')` from your init.vimpacker

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- COLOR SCHEMES
	use({ 'rose-pine/neovim', as = 'rose-pine' })	
	use({ 'folke/tokyonight.nvim', as = 'tokyo-night' })	
	use({ 'catppuccin/nvim', as = 'catppuccin'})	
	use({ 'sainnhe/gruvbox-material', as = 'gruvbox-material'})	
	-- COLOR SCHEMES END
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('theprimeagen/harpoon')
	use ('nvim-treesitter/playground') 
	use ('nvim-lua/plenary.nvim')
end)

