# windows-terminal

```
mklink /H "C:\Users\usern\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json" "C:\git\windows-terminal\settings.json"
```

# clangd + Windows + mingw for advent of code

```
      -- Enable the following language servers
      --  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
      --
      --  Add any additional override configuration in the following tables. Available keys are:
      --  - cmd (table): Override the default command used to start the server
      --  - filetypes (table): Override the default list of associated filetypes for the server
      --  - capabilities (table): Override fields in capabilities. Can be used to disable certain LSP features.
      --  - settings (table): Override the default settings passed when initializing the server.
      --        For example, to see the options for `lua_ls`, you could go to: https://luals.github.io/wiki/settings/
      local servers = {
        clangd = {
          cmd = { 'clangd', '--query-driver=C:/ProgramData/mingw64/mingw64/bin/g++.exe' },
        },
        cmake = {},
        -- gopls = {},
        -- pyright = {},
        -- rust_analyzer = {},
        -- ... etc. See `:help lspconfig-all` for a list of all the pre-configured LSPs
        --
        -- Some languages (like typescript) have entire language plugins that can be useful:
        --    https://github.com/pmizio/typescript-tools.nvim
        --
        -- But for many setups, the LSP (`tsserver`) will work just fine
        -- tsserver = {},
        --

        lua_ls = {
          -- cmd = {...},
          -- filetypes = { ...},
          -- capabilities = {},
          settings = {
            Lua = {
              completion = {
                callSnippet = 'Replace',
              },
              -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
              -- diagnostics = { disable = { 'missing-fields' } },
            },
          },
        },
      }
```

Then, create a compile_flags.txt folder in the source folder and add the following:
```
--target=x86_64-w64-mingw32
```

Old neovim install location on Meshlicious:
`C:\Users\usern\AppData\Local\Programs\Neovim\bin`

# Wezterm
Add to your environment variables:
| Variabe Name | Variable Value |
|---|---|
| `WEZTERM_CONFIG_FILE` | `<path to .wezterm.lua>`<br>`C:\git\windows-terminal\wezterm\.wezterm.lua` |
