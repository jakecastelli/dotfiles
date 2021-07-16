lua << EOF
require('neoscroll').setup({
    easing_function = "quadratic", -- Default easing function
    -- Set any other options as needed

     -- All these keys will be mapped to their corresponding default scrolling animation
    mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                '<C-y>', '<C-e>'},
})

local t = {}
-- Syntax: t[keys] = {function, {function arguments}}
-- Use the "sine" easing function
-- https://github.com/karb94/neoscroll.nvim
t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '350', [['sine']]}}
t['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '350', [['sine']]}}
-- Pass "nil" to disable the easing animation (constant scrolling speed)
require('neoscroll.config').set_mappings(t)
EOF