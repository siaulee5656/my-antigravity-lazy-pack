#!/bin/bash
echo "==========================================="
echo "   🚀 [開工 / 開機] 專案工作流啟動中...   "
echo "==========================================="
echo ""

echo "1. 讀取專案入口規則 (ANTIGRAVITY.md)..."
if [ -f ANTIGRAVITY.md ]; then
  cat ANTIGRAVITY.md
else
  echo "⚠️ 尚未建立 ANTIGRAVITY.md 規則檔！"
fi
echo ""

echo "2. 檢查目前 Git 本地倉庫狀態..."
git status
echo ""

echo "3. 檢查最近的 Commit 紀錄..."
git log -n 3 --oneline 2>/dev/null || echo "（目前尚無 Commit 紀錄）"
echo ""

echo "==========================================="
echo "   請讓 AI 助理閱讀上述資訊以開始今天的工作！"
echo "==========================================="
