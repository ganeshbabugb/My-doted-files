require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    number = true,
    relativenumber = true,
    adaptive_size = false,
    mappings = {
      list = {
        { key = "u", action = "dir_up" }, -- u (parent dir)
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
   -- dotfiles = true,
    custom = { ".git" },
  },
})

-- g? (help)
-- Y (copy file path)
-- y (copy file name)
-- gy (copy absolute path)
-- d (delete a file)
-- D (trash a file)
-- ctrl + x (split file)
-- c (copy file)
-- x (cut file)
-- p (paste file)
-- tab (preview)
-- r (rename)
-- a (create)
