# 🎓 AI Smart Attendance System

Full-stack web app with AI face recognition, login, export, and email alerts.

---

## 🚀 Deploy to Render (Step-by-Step)

### Step 1 — Push to GitHub
```bash
git init && git add . && git commit -m "init"
git remote add origin https://github.com/YOUR_USERNAME/attendance-system.git
git push -u origin main
```

### Step 2 — Create Render Web Service
1. https://render.com → New+ → Web Service → connect repo
2. Build Command: `bash build.sh`
3. Start Command: `gunicorn app:app --workers 2 --bind 0.0.0.0:$PORT --timeout 120`

### Step 3 — Set Environment Variables on Render

| Key | Value |
|-----|-------|
| SECRET_KEY | any random string |
| ADMIN_USERNAME | admin |
| ADMIN_PASSWORD | your secure password |
| SMTP_USER | you@gmail.com |
| SMTP_PASS | Gmail App Password |
| ALERT_FROM | you@gmail.com |
| ALERT_TO | teacher@school.com |

Gmail App Password: Google Account → Security → 2-Step Verification → App Passwords

### Step 4 — Add Persistent Disk
Render → your service → Disks:
- Mount Path: /opt/render/project/src
- Size: 1 GB

### Step 5 — Deploy!
First build ~5 min (compiling dlib). App live at https://your-app.onrender.com

---

## Run Locally
```bash
pip install -r requirements.txt
python app.py
# http://localhost:5000  |  Login: admin / admin123
```

## Features
- Login/password protected dashboard
- AI face recognition camera (auto marks attendance)
- Register students with webcam or photo upload
- Export to CSV or Excel
- Email alerts to absent students + admin report
- Analytics with attendance %
