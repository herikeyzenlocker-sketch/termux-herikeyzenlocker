#!/data/data/com.termux/files/usr/bin/bash
# RESTORE TERMUX HERIKEYZENLOCKER

echo "🔧 Memulai pemulihan Termux..."

# Minta izin akses penyimpanan
termux-setup-storage

# Update dan install paket yang dibutuhkan
pkg update -y && pkg install -y git zsh figlet ruby

# Install lolcat
gem install lolcat

# Clone repository backup
git clone https://github.com/herikeyzenlocker-sketch/termux-herikeyzenlocker.git /sdcard/termux_backup

# Salin file konfigurasi Zsh
cp /sdcard/termux_backup/.zshrc ~/

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Pasang plugin auto-suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Ganti shell default ke Zsh
chsh -s zsh

# Terapkan konfigurasi
exec zsh

echo "✅ Pemulihan selesai! Termux-mu sudah kembali seperti semula."
