require "nvchad.options"
local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

local lsp_vim = vim.lsp
lsp_vim.set_log_level "off"

local opt = vim.opt

opt.cmdheight = 0

-- add yours here!
