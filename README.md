# Koala Language VSCode Extension

VSCode 插件，为 Koala 编程语言提供语法高亮支持。

## 功能

- **语法高亮**
  - 关键字（`func`, `class`, `var`, `let`, `if`, `while`, `for`, `return` 等）
  - 类型（`int`, `float`, `str`, `bool` 等）
  - 字符串和数字
  - 注释（单行 `//` 和多行 `/* */`）
  - 注解（`@test`, `@bench`, `@skip`, `@should_panic` 等）
  - 函数和类名
  - 常量和布尔值

## 安装

### 方法 1：使用安装脚本（推荐）

```bash
cd koala-lang-vscode
./install.sh
```

### 方法 2：本地安装（开发模式）

1. 打开 VSCode
2. 按 `F5` 或点击菜单 `Run > Start Debugging`
3. 在新打开的 VSCode 窗口中打开 `.kl` 文件即可看到语法高亮

### 方法 3：手动安装

1. 将此目录复制到 VSCode 扩展目录：
   - Linux/macOS: `~/.vscode/extensions/`
   - Windows: `%USERPROFILE%\.vscode\extensions\`

2. 重启 VSCode

### 方法 4：打包安装

```bash
# 安装 vsce 工具
npm install -g @vscode/vsce

# 打包插件
vsce package

# 安装 .vsix 文件
code --install-extension koala-lang-0.1.0.vsix
```

## 文件结构

```
koala-lang-vscode/
├── package.json                 # 插件配置
├── language-configuration.json  # 语言配置（括号、注释等）
├── syntaxes/
│   └── koala.tmLanguage.json   # TextMate 语法定义
└── README.md
```

## 支持的文件类型

- `.kl` - Koala 源文件

## 示例

```koala
import "std/ut"

class Dog {
    pub func name() str {
        return "dog"
    }
}

@test
func test_example() {
    var x = 42
    let y = 3.14
    ut.assert_eq(x, 42)
}

@bench(warmup=2, runs=10)
func bench_example() {
    var sum = 0
    var i = 0
    while i < 100 {
        sum = sum + i
        i = i + 1
    }
}
```

## 许可证

MIT
