# 📘 How to Push Your Travel Planners Repo to GitHub

A step-by-step guide — from zero to live website. Takes about 10 minutes.

---

## What You'll Need

- A [GitHub account](https://github.com/signup) (free)
- [Git installed](https://git-scm.com/downloads) on your computer
- The `travel-planners` folder (downloaded from this chat)

---

## Step 1 — Download & Unzip

1. Download `travel-planners.zip`
2. Unzip it somewhere easy to find, e.g. `~/Documents/travel-planners/`

## Step 2 — Create the GitHub Repo

1. Go to **[github.com/new](https://github.com/new)**
2. Fill in:
   - **Repository name:** `travel-planners`
   - **Description:** `Personal trip planners — starting with Hawaii 2026`
   - **Public** (so GitHub Pages is free)
   - ⚠️ **Do NOT** check "Add a README file" (we already have one)
   - ⚠️ **Do NOT** add a .gitignore or license (we have those too)
3. Click **Create repository**

GitHub will show you a page with commands — leave that tab open, we'll use it in Step 4.

## Step 3 — Initialize Locally (Automated)

Open Terminal (Mac/Linux) or Git Bash (Windows) and run:

```bash
cd ~/Documents/travel-planners
./setup-repo.sh
```

This script handles `git init`, `git add`, and the first commit automatically.

> **Windows users:** If `./setup-repo.sh` doesn't work, run these manually:
> ```bash
> git init
> git branch -M main
> git add .
> git commit -m "Initial commit: Hawaii 2026 trip planner"
> ```

## Step 4 — Push to GitHub

From the same terminal, run (replace `YOUR_USERNAME`):

```bash
git remote add origin https://github.com/YOUR_USERNAME/travel-planners.git
git push -u origin main
```

If prompted for a password, use a **Personal Access Token** instead:
- GitHub → Settings → Developer settings → Personal access tokens → Generate new (classic)
- Grant `repo` scope, copy the token, paste it as your password

## Step 5 — Enable GitHub Pages

1. Go to your repo on GitHub
2. Click **Settings** (top right of the repo)
3. Click **Pages** (left sidebar)
4. Under **Source**:
   - Select **Deploy from a branch**
   - Branch: `main` / folder: `/ (root)`
   - Click **Save**
5. Wait ~1 minute. Refresh the Pages settings page — you'll see:
   > ✅ Your site is live at `https://YOUR_USERNAME.github.io/travel-planners/`

## Step 6 — View Your Hawaii Planner Live

Open in any browser:
```
https://YOUR_USERNAME.github.io/travel-planners/trips/hawaii-2026/
```

Bookmark it on your phone — you'll have it with you in Hawaii! 🌴

---

## 🔄 Updating the Planner Later

Whenever you tweak the Hawaii planner or add a new trip:

```bash
cd ~/Documents/travel-planners
# edit files...
git add .
git commit -m "Update Hawaii hotel bookings"
git push
```

Changes go live on GitHub Pages within ~1 minute.

---

## ➕ Adding a New Trip (e.g., Alaska)

```bash
cd ~/Documents/travel-planners

# Copy Hawaii as a template
cp -r trips/hawaii-2026 trips/alaska-2026

# Edit trips/alaska-2026/index.html for the new trip
# Update the main README.md to add Alaska to the trips table

git add .
git commit -m "Add Alaska 2026 trip planner"
git push
```

New trip is instantly live at `https://YOUR_USERNAME.github.io/travel-planners/trips/alaska-2026/`.

---

## 🆘 Troubleshooting

**"Permission denied (publickey)"**
→ Use HTTPS URL instead of SSH: `https://github.com/...` (not `git@github.com:...`)

**"Authentication failed"**
→ GitHub requires Personal Access Tokens now, not passwords. See Step 4.

**GitHub Pages shows 404**
→ Wait 2 minutes, then hard-refresh (Cmd+Shift+R or Ctrl+Shift+R). First deploy can take time.

**Map tiles aren't loading**
→ The map uses OpenStreetMap tiles which load from the internet. They'll show up anywhere you have a connection.

---

## 💡 Pro Tips

- **Pin the repo** on your GitHub profile to show it off
- **Star your own repo** — it's fine, we all do it
- **Enable Issues** (in repo Settings) to jot down ideas for future trips
- **Add a custom domain** later via Settings → Pages if you want `travel.yourname.com`

---

_Questions? Open an issue in your own repo or DM Claude in a new chat._ 🤖
