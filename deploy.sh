#!/bin/bash

# 盧柏文個人網站 v3 - 快速部署腳本

echo "🚀 開始部署多頁面履歷網站..."

# 檢查是否已初始化 git
if [ ! -d ".git" ]; then
    echo "📦 初始化 Git repository..."
    git init
    git add .
    git commit -m "Initial commit: Multi-page portfolio website"
else
    echo "✅ Git repository 已存在"
    git add .
    git commit -m "Update portfolio website"
fi

# 詢問部署方式
echo ""
echo "選擇部署方式："
echo "1) 推送到現有的 bevan-portfolio repo（覆蓋）"
echo "2) 推送到新的 repo"
read -p "請選擇 (1 或 2): " choice

if [ "$choice" = "1" ]; then
    echo "🔗 設定 remote 到 bevan-portfolio..."
    git remote remove origin 2>/dev/null
    git remote add origin git@github.com:bevan222/bevan-portfolio.git
    
    echo "📤 推送到 GitHub..."
    git branch -M main
    git push -u origin main --force
    
    echo ""
    echo "✅ 部署完成！"
    echo "🌐 網址：https://bevan222.github.io/bevan-portfolio"
    
elif [ "$choice" = "2" ]; then
    echo ""
    echo "請輸入新的 repository 名稱（例如：portfolio-v3）"
    read -p "Repository 名稱: " repo_name
    
    if [ -z "$repo_name" ]; then
        echo "❌ 未輸入 repository 名稱，部署取消"
        exit 1
    fi
    
    echo "🔗 設定 remote..."
    git remote remove origin 2>/dev/null
    git remote add origin git@github.com:bevan222/$repo_name.git
    
    echo "📤 推送到 GitHub..."
    git branch -M main
    git push -u origin main
    
    echo ""
    echo "✅ 部署完成！"
    echo "🌐 網址：https://bevan222.github.io/$repo_name"
    echo ""
    echo "📍 記得到 GitHub 啟用 Pages："
    echo "   Settings → Pages → Source 選擇 'main' branch"
else
    echo "❌ 無效的選擇，部署取消"
    exit 1
fi

echo ""
