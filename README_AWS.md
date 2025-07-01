# OdontoCloud AI – AWS Amplify Demo

This repository contains a **ready‑to‑deploy** Next.js demo of the OdontoCloud AI referral workflow.

## 1  Prerequisites

| Tool | Install guide |
|------|---------------|
| **Git** | https://git-scm.com |
| **Node 18 LTS** | https://nodejs.org |
| **AWS account** | https://console.aws.amazon.com |
| **Supabase account** | https://supabase.com (free tier) |

> **Windows 11 Pro users:** run commands in **PowerShell** or **Windows Terminal**. If you prefer WSL2, install Ubuntu 22.04 first.

---

## 2  Clone & configure

```bash
git clone https://github.com/your-username/odontocloud-amplify-demo.git
cd odontocloud-amplify-demo
cp .env.example .env.local   # fill with your Supabase creds
npm install
npm run dev                 # http://localhost:3000
```

---

## 3  Supabase setup

1. **Create project** → `Project Settings ▸ API` copy the **URL** and **anon key**.  
2. In SQL Editor, run the contents of `db_001_init.sql` (specialties & procedures).

---

## 4  AWS Amplify deployment

1. Push this repo to GitHub.  
2. AWS Console → **Amplify Hosting ▸ New app ▸ Host web app**.  
3. Select the GitHub repo & branch, keep build settings as default (Amplify auto‑detects **amplify.yml**).  
4. Add environment variables when prompted:

```
NEXT_PUBLIC_SUPABASE_URL= https://xxxxx.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY= eyJhbGciOiJI...
```

5. Hit **Deploy**. In ~2 minutes you’ll get a public URL like  
   `https://main.<branch>.<appId>.amplifyapp.com`.

---

## 5  Custom domain (optional)

1. Route 53 → register `odontocloud.ai` (or transfer).  
2. **Amplify ▸ Domain management ▸ Add domain** → follow wizard.

---

### Troubleshooting

| Symptom | Fix |
|---------|-----|
| Build fails: “Cannot find module ‘tailwindcss’” | Double‑check `npm ci` step ran; retry build. |
| White page, 500 error | Verify Supabase URL & anon key are correct in Amplify **App settings ▸ Environment variables**. |

---

## 6  Structure

```
.
├─ app/                     # App‑router pages
│   ├─ layout.tsx
│   ├─ page.tsx
│   └─ referrals/
│       └─ new/page.tsx
├─ components/
│   └─ ReferralForm.tsx
├─ db_001_init.sql
├─ amplify.yml
└─ tailwind.config.ts
```

---

Enjoy your demo! For any issues ping Faisal or open a GitHub issue.