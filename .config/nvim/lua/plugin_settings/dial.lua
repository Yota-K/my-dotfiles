local dial_map = require('dial.map')

vim.keymap.set('n', '<C-a>', dial_map.inc_normal(), { noremap = true })
vim.keymap.set('n', '<C-x>', dial_map.dec_normal(), { noremap = true })
vim.keymap.set('n', 'g<C-a>', dial_map.inc_gnormal(), {noremap = true })
vim.keymap.set('n', 'g<C-x>', dial_map.dec_gnormal(), {noremap = true })
vim.keymap.set('v', '<C-a>', dial_map.inc_visual(), {noremap = true })
vim.keymap.set('v', '<C-x>', dial_map.dec_visual(), {noremap = true })
vim.keymap.set('v', 'g<C-a>', dial_map.inc_gvisual(), {noremap = true })
vim.keymap.set('v', 'g<C-x>', dial_map.dec_gvisual(), {noremap = true })

local augend = require('dial.augend')

require('dial.config').augends:register_group{
  -- default augends used when no group name is specified
  default = {
    augend.integer.alias.decimal,    -- nonnegative decimal number (0, 1, 2, 3, ...)
    augend.integer.alias.hex,        -- nonnegative hex number  (0x01, 0x1a1f, etc.)
    augend.date.alias['%Y/%m/%d'],   -- date (2022/02/19, etc.)
    augend.constant.alias.bool,      -- boolean value (true <-> false)
    augend.constant.alias.ja_weekday, -- Japanese weekday	月, 火, ..., 土, 日
    augend.constant.new {
      elements = {'&&', '||'},
      word = false,
      cyclic = true,
    },
  },
}