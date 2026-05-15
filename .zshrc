# Banner figlet (warna pelangi)
figlet "Cyber Explore" | lolcat
figlet "HeriKeyzenlocker" | lolcat
echo "============================================================" | lolcat

# Neofetch (info sistem, sekali saja)
neofetch

echo "============================================================" | lolcat
echo "Selamat datang di terminal HeriKeyzenlocker" | lolcat
echo "ketika perintah atau command" | lolcat
echo "============================================================" | lolcat

# Fungsi anti-clear (hanya banner figlet, tanpa neofetch)
clear() {
    command clear
    figlet "Cyber Explore" | lolcat
    figlet "HeriKeyzenlocker" | lolcat
    echo "============================================================" | lolcat
    echo "Selamat datang di terminal HeriKeyzenlocker" | lolcat
    echo "ketika perintah atau command" | lolcat
    echo "============================================================" | lolcat
}

# Oh My Zsh & plugin
export ZSH="$HOME/.oh-my-zsh"
if [ -f "$ZSH/oh-my-zsh.sh" ]; then
    ZSH_THEME="robbyrussell"
    plugins=(git zsh-autosuggestions)
    source $ZSH/oh-my-zsh.sh
PROMPT="%F{green}%n%f@%F{blue}%m%f:%F{cyan}%~%f$ "
fi

# Prompt kustom (setelah Oh My Zsh agar tidak tertimpa)
PROMPT="%F{green}%n%f@%F{blue}%m%f:%F{cyan}%~%f➜ "
