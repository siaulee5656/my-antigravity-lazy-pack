#!/bin/bash
echo "==========================================="
echo "   🔒 [收工 / 關機] 專案工作流啟動中...   "
echo "==========================================="
echo ""

echo "1. 安全檢查：掃描專案內是否含有敏感資訊 (如 API Key / Token 等)..."
# 排除 .git、圖片與二進位檔案
MATCHES=$(grep -rnw . -e "key" -e "token" -e "secret" -e "password" -e "credentials" --exclude-dir=".git" --exclude="*.png" --exclude="*.jpg" --exclude="*.zip" --exclude="*.sh" 2>/dev/null)

if [ -n "$MATCHES" ]; then
  echo "⚠️ 偵測到以下檔案可能含有敏感資訊，提交前請先確認："
  echo "$MATCHES"
else
  echo "✅ 未偵測到明顯的敏感金鑰資訊，安全通過！"
fi
echo ""

echo "2. 檢查目前 Git 的變更狀態 (git status)..."
git status
echo ""

echo "3. 顯示變更詳細內容 (git diff)..."
git diff --stat
echo ""

echo "==========================================="
echo "   請讓 AI 助理檢查上列狀態並執行 Commit 與 Push！"
echo "==========================================="
