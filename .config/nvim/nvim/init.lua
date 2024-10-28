-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Function to set tab length
local function set_tab_length(ft, ts, sw, sts, et)
  vim.api.nvim_create_autocmd("FileType", {
    pattern = ft,
    callback = function()
      vim.bo.tabstop = ts
      vim.bo.shiftwidth = sw
      vim.bo.softtabstop = sts
      vim.bo.expandtab = et
    end,
  })
end

vim.opt.foldmethod = "manual"
vim.opt.foldenable = true

vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

-- Set key mapping for Ctrl+d to scroll down and center the screen
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- Set key mapping for n/N to scroll down and center screen on Find
vim.api.nvim_set_keymap("n", "n", "nzz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzz", { noremap = true, silent = true })

-- vim.cmd([[
--   nnoremap n nzzzv
--   nnoremap N Nzzzv
--]])

-- Add this in your init.lua or a plugin config file
-- vim.cmd([[
--   set cursorline
--   hi CursorLine gui=underline guibg=NONE
-- ]])
-- Enable cursor line
-- vim.o.cursorline = true

-- Set cursor line highlight to underline
-- vim.api.nvim_set_hl(0, "CursorLine", { underline = true, bg = "NONE" })

-- Set tab length for C++ files
set_tab_length("cpp", 2, 2, 2, true)

-- Set tab length for C files
set_tab_length("c", 4, 4, 4, true)

-- Set tab length for C# files
set_tab_length("cs", 4, 4, 4, true)

-- Set tab length for Python files
set_tab_length("python", 4, 4, 4, true)

-- Set tab length for Java files
set_tab_length("java", 4, 4, 4, true)

-- Set tab length for HTML files
set_tab_length("html", 2, 2, 2, true)

-- Set tab length for CSS files
set_tab_length("css", 2, 2, 2, true)

-- Set tab length for JavaScript files
set_tab_length("javascript", 2, 2, 2, true)

-- Set tab length for Go files
set_tab_length("go", 4, 4, 4, false)

-- Set tab length for Swift files
set_tab_length("swift", 4, 4, 4, true)

-- Set tab length for Rust files
set_tab_length("rust", 4, 4, 4, true)

-- Set tab length for PHP files
set_tab_length("php", 4, 4, 4, true)

-- Set tab length for MySQL files
set_tab_length("mysql", 4, 4, 4, true)

-- Set tab length for JSON files
set_tab_length("json", 2, 2, 2, true)

-- Enable text wrapping
-- vim.opt.wrap = true
vim.o.fillchars = "eob:~"
-- Optionally, set additional options for line wrapping
-- vim.opt.linebreak = true -- Avoid breaking words on wrap
-- vim.opt.breakindent = true -- Enable break indent
-- vim.opt.showbreak = ">> " -- String to display at the start of wrapped lines

-- Additional optional configurations for specific file types
--vim.cmd([[
--  augroup wrap_settings
--    autocmd!
--    autocmd FileType markdown,txt,html,css,javascript setlocal wrap
--    autocmd FileType markdown,txt,html,css,javascript setlocal linebreak
--  augroup END
--]])
