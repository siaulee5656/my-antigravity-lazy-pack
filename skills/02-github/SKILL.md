---
name: antigravity-github
description: 在 AntiGravity 連接 GitHub CLI。說「連接 GitHub」「設定 GitHub」時載入。
---

# 連接 GitHub（AntiGravity 版）

## 步驟

### 1. 檢查
```bash
gh auth status
```

### 2. 登入
```bash
gh auth login --web --git-protocol https
```

### 3. 設定 Git 使用者
```bash
git config --global user.name "你的名字"
git config --global user.email "your-email@example.com"
```
（若不想公開個人信箱，可使用 GitHub no-reply email）

⚠️ 不把 GitHub token 寫進 Markdown/AGENTS/Obsidian，commit 前先檢查 diff。
