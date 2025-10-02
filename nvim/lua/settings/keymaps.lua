local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local builtin = require('telescope.builtin')

map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)

map('n', '<F4>', ':NERDTree<CR>', default_opts)

vim.cmd [[
  nnoremap <Leader>q :bw<CR>
  autocmd FileType Rust nnoremap <leader>t :wall<CR>:terminal cargo test<CR><C-End>
  autocmd FileType Rust nnoremap <leader>r :wall<CR>:terminal cargo run<CR><C-End>
  autocmd FileType Rust nnoremap <leader>d :wall<CR>:terminal RUST_LOG="debug" cargo run<CR><C-End>
  autocmd FileType Rust nnoremap <leader>c :wall<CR>:terminal RUST_LOG="trace" cargo run<CR><C-End>
  autocmd FileType Rust nnoremap <leader>b :terminal cargo build<CR>
  autocmd FileType Rust nnoremap <leader>br :wall<CR> :terminal cargo build --release<CR>
  autocmd FileType Rust nnoremap <leader>l :terminal cargo clippy<CR>

  autocmd FileType Go nnoremap <leader>r :wall<CR>:terminal go run .<CR><C-End>
]]

vim.cmd [[
  nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
  nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
  nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
  nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
]]

