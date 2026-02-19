# Windows Window Resizing Tool
A lightweight window resizing tool based on AutoHotkey (AHK), supporting smooth resizing/positioning of windows by holding down keyboard shortcuts, offering precise and fluid operation.

## Download

- **Executable Release File**: https://github.com/ranging-kiwi/Ctrl-Lazy-Windows/releases/download/v1.0/Lazy_Windows.exe

- **Source Code**: https://github.com/ranging-kiwi/Lazy-Windows/blob/main/Windows%20Adjuster.ahk

## Features

1. **Smooth Adjustment**: Hold down the shortcut key to continuously fine-tune the window size/position; release to stop.

2. **Dual-Speed ​​Adjustment**: Normal speed/fast adjustment (switch with Shift key), balancing precision and efficiency.

3. **Center-Based Resizing**: Resizes the window based on the window center to avoid offset.

4. **Lightweight**: No installation required; runs as a single EXE file, consuming minimal system resources.

## Shortcut Key Explanation

### Adjust Window Size (Based on Window Center)

| Shortcut Key | Function |
|--------------|--------------------|
| Ctrl+Alt+↑ | Zoom Up on Window |
| Ctrl+Alt+↓ | Shrink window down |
Ctrl+Alt+→ | Zoom in window to the right |
Ctrl+Alt+← | Shrink window to the left |

### Move Window Position

| Shortcut Keys | Functions |
|--------------|--------------------|
| Ctrl+Alt+i | Move window up |
| Ctrl+Alt+k | Move window down |
| Ctrl+Alt+j | Move window to the left |
| Ctrl+Alt+l | Move window to the right |

### Other Operations

| Shortcut Keys | Functions |
|--------------|--------------------|
| Ctrl+Alt+Esc | Exit tool |
| Shift+any shortcut key | Quick adjustment (step 64) |

## Parameter Explanation If you want to modify the adjustment step/speed, you can edit the following parameters in the source code:

- `stretchStep := 16`: Normal adjustment step size (default 16 pixels)

- `fastStep := 64`: Fast adjustment step size (default 64 pixels)

- `stretchInterval := 20`: Adjustment interval (default 20 milliseconds, smaller values ​​result in smoother operation)

## Compilation Notes

- Dependency: AutoHotkey v2

- Compilation tool: Ahk2Exe

- Select the Base File corresponding to v2 during compilation (e.g., `v2.x.x U64 AutoHotkey64.exe`)

## Notes

1. The tool will use the `Ctrl+Alt` shortcut key. If it conflicts with other software, you can modify the shortcut key in the source code.

2. Some windows with administrator privileges may not be adjustable. You need to run this tool as administrator.

3. If falsely flagged by antivirus software, you can add it to the trusted list (open source tools contain no malicious code).


# Windows窗口微调工具
一个基于AutoHotkey (AHK) 编写的轻量级窗口调整工具，支持按住快捷键平滑调整窗口大小/位置，操作精准且流畅。

## 下载
- **可执行文件release**：https://github.com/ranging-kiwi/Ctrl-Lazy-Windows/releases/download/v1.0/Lazy_Windows.exe
- **源代码**：https://github.com/ranging-kiwi/Ctrl-Lazy-Windows/blob/main/Windows%20Adjuster.ahk

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
