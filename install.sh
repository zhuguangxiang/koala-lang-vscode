#!/bin/bash
# 安装 Koala VSCode 插件

set -e

PLUGIN_DIR="$(cd "$(dirname "$0")" && pwd)"
VSCODE_DIR="$HOME/.vscode/extensions/koala-lang-0.1.0"

echo "Installing Koala VSCode extension..."

# 创建扩展目录
mkdir -p "$VSCODE_DIR/syntaxes"
mkdir -p "$VSCODE_DIR/icons"

# 复制文件
cp "$PLUGIN_DIR/package.json" "$VSCODE_DIR/"
cp "$PLUGIN_DIR/language-configuration.json" "$VSCODE_DIR/"
cp "$PLUGIN_DIR/syntaxes/koala.tmLanguage.json" "$VSCODE_DIR/syntaxes/"
cp "$PLUGIN_DIR/icons/koala.svg" "$VSCODE_DIR/icons/"

echo "✓ Extension installed to $VSCODE_DIR"
echo "✓ Please restart VSCode to activate the extension"
