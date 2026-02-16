# 盧柏文個人履歷網站 v3 - 多頁面版本

完整的多頁面個人履歷網站，每個區塊獨立成一個頁面

## 🎨 設計特色

- ✅ **多頁面架構** - 每個區塊獨立頁面，結構清晰
- ✅ **頁簽導航** - 右上角清楚標示當前頁面
- ✅ **響應式設計** - 手機、平板、電腦完美顯示
- ✅ **Mobile Menu** - 手機版漢堡選單
- ✅ **平滑動畫** - 卡片進入與 hover 效果
- ✅ **模組化 CSS & JS** - 共用樣式與腳本

## 📂 檔案結構

```
bevan-portfolio-v3/
├── index.html          # 關於我（首頁）
├── experience.html     # 工作經歷
├── projects.html       # 專案作品
├── skills.html         # 技能專長
├── contact.html        # 聯絡我
├── style.css           # 共用樣式
├── script.js           # 共用腳本
└── README.md           # 說明文件
```

## 🌐 頁面說明

### 1. 關於我（index.html）
- 個人簡介
- 統計數據展示
- 學歷資訊

### 2. 工作經歷（experience.html）
- 4 份工作經歷
- 卡片式呈現
- 技術標籤
- 獎項展示

### 3. 專案作品（projects.html）
- Side Projects 展示
- GitHub 連結
- Call to Action

### 4. 技能專長（skills.html）
- 技術能力
- 管理能力
- 語言能力
- 興趣愛好

### 5. 聯絡我（contact.html）
- 多種聯絡方式
- 社群連結
- 履歷下載

## 🚀 部署方式

### 方案 1：GitHub Pages

```bash
cd bevan-portfolio-v3
git init
git add .
git commit -m "Initial commit: Multi-page portfolio"
git remote add origin https://github.com/你的帳號/portfolio.git
git push -u origin main
```

到 Settings → Pages 啟用即可

### 方案 2：直接預覽

雙擊 `index.html` 即可在瀏覽器預覽

## 🛠️ 客製化修改

### 修改顏色主題

在 `style.css` 中搜尋並替換：
- 主色：`#2c5aa0`（藍色）
- 漸層色：`#667eea`、`#764ba2`

### 新增內容

1. **新增工作經歷**：複製 `experience.html` 中的 `.card` 區塊
2. **新增專案**：複製 `projects.html` 中的 `.card` 區塊
3. **新增技能**：在 `skills.html` 中新增 `.skill-category`

### 修改導航列

所有頁面的導航列一致，修改時需要同步更新所有 HTML 檔案。

## 📱 響應式設計

- **桌面版**（> 768px）：顯示完整導航列
- **手機版**（≤ 768px）：漢堡選單

## ✨ 特色功能

- ✅ 固定頂部導航
- ✅ 當前頁面高亮顯示
- ✅ 平滑滾動效果
- ✅ 卡片進入動畫
- ✅ Hover 效果
- ✅ 麵包屑導航

## 🎯 與單頁版本的差異

| 特性 | 單頁版本 | 多頁版本（v3） |
|------|---------|---------------|
| SEO | 較差 | ✅ 更好 |
| 載入速度 | 較慢 | ✅ 更快 |
| 維護性 | 較難 | ✅ 更容易 |
| 獨立網址 | ❌ | ✅ 每頁獨立 |
| 分享特定內容 | 較難 | ✅ 可直接分享頁面 |

## 🔧 技術棧

- HTML5
- CSS3（純手寫，無框架）
- Vanilla JavaScript
- Font Awesome Icons

---

**Built with ❤️ by Tech Advisor for Po-Wen Lu** 🚀
