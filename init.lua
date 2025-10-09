vim.opt.number = true
vim.opt.relativenumber = true

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "init.lua",
  callback = function(args)
    vim.cmd("luafile " .. args.file)
  end,
})

