-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/esat/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?.lua;/home/esat/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?/init.lua;/home/esat/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?.lua;/home/esat/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/esat/.cache/nvim/packer_hererocks/2.1.1741730670/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  catppuccin = {
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  harpoon = {
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1�\tbody\15lsp_expand�\4\1\0\v\0\28\00046\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0009\5\n\0059\5\v\0055\a\r\0009\b\t\0009\b\f\bB\b\1\2=\b\14\a9\b\t\0009\b\15\bB\b\1\2=\b\16\a9\b\t\0009\b\17\b5\n\18\0B\b\2\2=\b\19\a9\b\t\0009\b\20\bB\b\1\2=\b\21\aB\5\2\2=\5\t\0049\5\22\0009\5\23\0054\a\3\0005\b\24\0>\b\1\a5\b\25\0>\b\2\a4\b\3\0005\t\26\0>\t\1\b5\t\27\0>\t\2\bB\5\3\2=\5\23\4B\2\2\0012\0\0�K\0\1\0\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\14<C-Space>\rcomplete\t<CR>\1\0\1\vselect\2\fconfirm\f<S-Tab>\21select_prev_item\n<Tab>\1\0\4\t<CR>\0\14<C-Space>\0\n<Tab>\0\f<S-Tab>\0\21select_next_item\vinsert\vpreset\fmapping\fsnippet\1\0\3\fsnippet\0\fsources\0\fmapping\0\vexpand\1\0\1\vexpand\0\0\nsetup\fluasnip\bcmp\frequire\0" },
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nF\0\0\3\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vclangd\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15float_opts\1\0\1\vborder\vcurved\1\0\6\17persist_mode\2\20start_in_insert\2\20shade_terminals\2\17open_mapping\n<A-i>\14direction\nfloat\15float_opts\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyo-night"] = {
    loaded = true,
    path = "/home/esat/.local/share/nvim/site/pack/packer/start/tokyo-night",
    url = "https://github.com/folke/tokyonight.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nF\0\0\3\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vclangd\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1�\tbody\15lsp_expand�\4\1\0\v\0\28\00046\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0009\5\n\0059\5\v\0055\a\r\0009\b\t\0009\b\f\bB\b\1\2=\b\14\a9\b\t\0009\b\15\bB\b\1\2=\b\16\a9\b\t\0009\b\17\b5\n\18\0B\b\2\2=\b\19\a9\b\t\0009\b\20\bB\b\1\2=\b\21\aB\5\2\2=\5\t\0049\5\22\0009\5\23\0054\a\3\0005\b\24\0>\b\1\a5\b\25\0>\b\2\a4\b\3\0005\t\26\0>\t\1\b5\t\27\0>\t\2\bB\5\3\2=\5\23\4B\2\2\0012\0\0�K\0\1\0\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\14<C-Space>\rcomplete\t<CR>\1\0\1\vselect\2\fconfirm\f<S-Tab>\21select_prev_item\n<Tab>\1\0\4\t<CR>\0\14<C-Space>\0\n<Tab>\0\f<S-Tab>\0\21select_next_item\vinsert\vpreset\fmapping\fsnippet\1\0\3\fsnippet\0\fsources\0\fmapping\0\vexpand\1\0\1\vexpand\0\0\nsetup\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15float_opts\1\0\1\vborder\vcurved\1\0\6\17persist_mode\2\20start_in_insert\2\20shade_terminals\2\17open_mapping\n<A-i>\14direction\nfloat\15float_opts\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
