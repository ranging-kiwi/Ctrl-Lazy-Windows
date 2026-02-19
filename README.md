# Ctrl-Lazy-Windows
Use Keyboard to control the size and position of windows. 用键盘调整窗口的大小和位置
# Windows窗口微调工具
一个基于AutoHotkey (AHK) 编写的轻量级窗口调整工具，支持按住快捷键平滑调整窗口大小/位置，操作精准且流畅。

## 下载
- **可执行文件release**：[[LazyWindows.exe](https://github.com/ranging-kiwi/Ctrl-Lazy-Windows/releases/download/v1.0/LazyWindows.exe)]
- **源代码**：[[LazyWindows.ahk](https://github.com/ranging-kiwi/Ctrl-Lazy-Windows/blob/main/WindowsAdjuster.ahk)]

## 功能特点
1. **平滑调整**：按住快捷键可持续微调窗口大小/位置，松开即停止
2. **双速调节**：普通速度/快速调节（Shift键切换），兼顾精准和效率
3. **居中缩放**：调整窗口大小时以窗口中心为基准，避免偏移
4. **轻量化**：无需安装，单EXE文件运行，不占用系统资源

## 快捷键说明
### 调整窗口大小（以窗口中心为基准）
| 快捷键       | 功能               |
|--------------|--------------------|
| Ctrl+Alt+↑   | 向上放大窗口       |
| Ctrl+Alt+↓   | 向下缩小窗口       |
| Ctrl+Alt+→   | 向右放大窗口       |
| Ctrl+Alt+←   | 向左缩小窗口       |

### 移动窗口位置
| 快捷键       | 功能               |
|--------------|--------------------|
| Ctrl+Alt+i   | 向上移动窗口       |
| Ctrl+Alt+k   | 向下移动窗口       |
| Ctrl+Alt+j   | 向左移动窗口       |
| Ctrl+Alt+l   | 向右移动窗口       |

### 其他操作
| 快捷键       | 功能               |
|--------------|--------------------|
| Ctrl+Alt+Esc | 退出工具           |
| Shift+任意快捷键 | 快速调节（步长64） |

## 参数说明
如果你想修改调节步长/速度，可编辑源码中的以下参数：
- `stretchStep := 16`：普通调节步长（默认16像素）
- `fastStep := 64`：快速调节步长（默认64像素）
- `stretchInterval := 20`：调节间隔（默认20毫秒，数值越小越流畅）

## 编译说明
- 依赖：AutoHotkey v2
- 编译工具：Ahk2Exe
- 编译时选择v2对应的Base File（如`v2.x.x U64 AutoHotkey64.exe`）

## 注意事项
1. 工具运行时会占用`Ctrl+Alt`组合快捷键，若与其他软件冲突可修改源码中的快捷键
2. 部分管理员权限的窗口可能无法调整，需以管理员身份运行本工具
3. 若被杀毒软件误报，可添加信任（开源工具无任何恶意代码）
