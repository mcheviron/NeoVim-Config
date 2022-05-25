local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  print("Null-Ls couldn't be loaded")
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		-- formatting.black.with({ extra_args = { "--fast", "--stdin-filename", "$FILENAME", "--quiet" } }),
    formatting.black,
    formatting.yapf,
		formatting.stylua,
    formatting.clang_format,





    -- diagnostics.flake8,
    diagnostics.cppcheck,
    -- diagnostics.gccdiag,
	},
})
