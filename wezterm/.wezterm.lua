-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
-- config.use_fancy_tab_bar = true
-- Hides the title bar
config.window_decorations = "RESIZE|INTEGRATED_BUTTONS"

-- For example, changing the color scheme:
config.color_scheme = 'Monokai Remastered'

-- Default start
config.default_prog = { 'powershell.exe' }
config.default_cwd = "C:/git"

-- Adds PowerShell and VS cmd.exe to the Launcher Menu
-- https://wezfurlong.org/wezterm/config/launch.html#the-launcher-menu
-- local launch_menu = {}
-- if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  -- table.insert(launch_menu, {
    -- label = 'PowerShell',
    -- args = { 'powershell.exe', '-NoLogo' },
  -- })

  -- Find installed visual studio version(s) and add their compilation
  -- environment command prompts to the menu
  -- for _, vsvers in
    -- ipairs(
      -- wezterm.glob('Microsoft Visual Studio/20*', 'C:/Program Files (x86)')
    -- )
  -- do
    -- local year = vsvers:gsub('Microsoft Visual Studio/', '')
    -- table.insert(launch_menu, {
      -- label = 'x64 Native Tools VS ' .. year,
      -- args = {
        -- 'cmd.exe',
        -- '/k',
        -- 'C:/Program Files (x86)/'
          -- .. vsvers
          -- .. '/BuildTools/VC/Auxiliary/Build/vcvars64.bat',
      -- },
    -- })
  -- end
-- end
-- config.launch_menu = launch_menu

-- and finally, return the configuration to wezterm
return config