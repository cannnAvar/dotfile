-- Sistem panosunu kulan
-- vim.o.clipboard = 'unnamedplus'
-- vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
-- Fareyi kulan
-- vim.o.mouse = 'a'

-- Tab
-- Her TAB da kaç boşluk bırakacagı
vim.o.tabstop = 4
-- Boşluklardan oluşan sahte TAB uzunluğu
vim.o.softtabstop = 4
-- Görsel modda basıldığında bloğun ne kadar kaydırılacağı
vim.o.shiftwidth = 4
-- TAB ile boşluğu yer değiştir
vim.o.expandtab = true

-- Görünüm Ayarları
-- Numaraları göster
vim.o.number = true
vim.o.relativenumber = true
-- Çirikin şey
vim.o.cursorline = false -- AÇMA

-- Arama
-- Harf girildiği anda arama yapma
vim.o.incsearch = true
-- Aranankelimeyi gösterme
vim.o.hlsearch = false
-- Büyük harfe dikkat etme
vim.o.ignorecase = true
-- Biz büyük harf girdiğimizde dikkat et
vim.o.smartcase = true           

-- Ek dosya Sistem ayarları
-- Swapı Kapatma
vim.opt.swapfile = false
-- Yedekleme yapma
vim.opt.backup = false
vim.opt.writebackup = false

-- ne olduğunu bilmiyorum :)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appeared/became resolved
vim.opt.signcolumn = "yes"
