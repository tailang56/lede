#!/bin/bash

# === 请根据你实际情况修改这项 ===
GITHUB_REPO_URL="https://github.com/tailang56/lede.git"  # ← 替换成你自己的 GitHub 仓库地址

# ===============================

echo " 检查是否为 Git 仓库..."
if [ ! -d .git ]; then
    echo "初始化 Git 仓库..."
    git init
    git branch -M master
    git remote add origin "$GITHUB_REPO_URL"
else
    echo " 已是 Git 仓库"
fi

echo "添加所有更改到暂存区..."
git add .

echo "提交更改..."
git commit -m "更新 GitHub Actions 与 my_config 配置" || echo "⚠️ 没有新的更改可提交"

echo "推送到远程仓库..."
git push origin master

echo "上传成功！请登录 GitHub 查看 Actions 是否运行"

