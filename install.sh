#!/usr/bin/env sh

set -e

echo "[*] Installing LazySed..."

INSTALL_DIR="$HOME/.local/bin"

mkdir -p "$INSTALL_DIR"

cp sr "$INSTALL_DIR/sr"

chmod +x "$INSTALL_DIR/sr"

SHELL_RC=""

if [ -n "$ZSH_VERSION" ]; then
    SHELL_RC="$HOME/.zshrc"
elif [ -n "$BASH_VERSION" ]; then
    SHELL_RC="$HOME/.bashrc"
elif [ -f "$HOME/.zshrc" ]; then
    SHELL_RC="$HOME/.zshrc"
else
    SHELL_RC="$HOME/.bashrc"
fi

if ! grep -q '.local/bin' "$SHELL_RC" 2>/dev/null; then
    echo '' >> "$SHELL_RC"
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$SHELL_RC"
fi

echo
echo "[+] Installed successfully."
echo
echo "Run:"
echo
echo "    source $SHELL_RC"
echo
echo "Then use:"
echo
echo "    sr old new file"
echo
echo "    sr /old text/ /new text/ file"
echo
