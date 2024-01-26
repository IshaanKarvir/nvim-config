return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<C-a>', function()
      harpoon:list():append()
    end, { desc = 'Add to harpoon' })
    vim.keymap.set('n', '<C-s>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Switch to harpoon item 1' })

    vim.keymap.set('n', '<C-q>', function()
      harpoon:list():select(1)
    end, { desc = 'Switch to harpoon item 2' })
    vim.keymap.set('n', '<C-w>', function()
      harpoon:list():select(2)
    end, { desc = 'Switch to harpoon item 3' })
    vim.keymap.set('n', '<C-e>', function()
      harpoon:list():select(3)
    end, { desc = "Switch to harpoon item 4" })
    vim.keymap.set('n', '<C-r>', function()
      harpoon:list():select(4)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end)
  end,
}
