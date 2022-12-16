local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ','

-- Clear search highlighting
map('n', '<leader>c', ':nohl<CR>')

-- Map Esc to kk
map('i', 'kk', '<Esc>')

-- Disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')       --insert mode
map('i', '<leader>s', '<C-c>:w<CR>')  --normal mode

-- Select all
map('n', 'zz', 'gg<S-v>G')

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Move Tab
map('n', '<C-t>', ':tabedit<CR>')
map('n', '<C-w>', ':tabclose<CR>')
map('n', '<C-Left>', ':tabprevious<CR>')
map('n', '<C-Right>', ':tabnext<CR>')
map('n', '<C-Up>', ':tabfirst<CR>')
map('n', '<C-Down>', ':tablast<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')   -- Exit all windows
map('n', '<leader>k', ':q<CR>')     -- Close current buffer

-- Split window
map('n', '<C-x>', ':split<Return><C-w>w')
map('n', '<C-y>', ':vsplit<Return><C-w>w')

-- Change split orientation
map('n', '<leader>x', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>y', '<C-w>t<C-w>H') -- change horizontal to vertical

-- Increment/decrement for numbers
map('n', '+', '<C-a>')
map('n', '-', '<C-x>')

-- Terminal mappings
map('n', 'tt', ':Term<CR>', { noremap = true })  -- open
map('t', 'kk', '<C-\\><C-n>')                    -- exit

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close
map('n', '<leader>r', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file

-- Vista tag-viewer
map('n', '<C-m>', ':Vista!!<CR>') -- open/close
