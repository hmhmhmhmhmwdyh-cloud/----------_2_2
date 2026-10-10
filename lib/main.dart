<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<meta name="theme-color" content="#040404">
<title>نور المؤمن | Noor Al-Mumin</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Amiri:ital,wght@0,400;0,700;1,400&family=Tajawal:wght@300;400;500;700;800;900&display=swap" rel="stylesheet">
<style>
:root {
  --bg-dark: #040404;
  --bg-card: #0d0b07;
  --bg-card-alt: #14100a;
  --bg-card-hover: #1c170f;
  --gold-light: #fff0c2;
  --gold-main: #d4af37;
  --gold-mid: #f3d98b;
  --gold-dark: #8e6c1e;
  --gold-shadow: rgba(212, 175, 55, 0.25);
  --gold-glow: rgba(212, 175, 55, 0.45);
  --line-color: rgba(212, 175, 55, 0.2);
  --line-faint: rgba(212, 175, 55, 0.08);
  --text-main: #f9f5ea;
  --text-muted: #a39985;
  --danger: #e74c3c;
  --success: #2ecc71;
  --gold-grad: linear-gradient(135deg, #fff3cd 0%, #d4af37 50%, #8e6c1e 100%);
  --gold-grad-soft: linear-gradient(160deg, rgba(212, 175, 55, 0.18) 0%, rgba(142, 108, 30, 0.05) 100%);
  --fs-base: 20px;
}

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
  -webkit-tap-highlight-color: transparent;
  user-select: none;
}

html, body {
  height: 100%;
  width: 100%;
  background-color: #000;
  font-family: 'Tajawal', system-ui, -apple-system, sans-serif;
  color: var(--text-main);
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: center;
}

body::before {
  content: '';
  position: absolute;
  inset: 0;
  background: radial-gradient(circle at 50% 0%, #1d1609 0%, #040404 70%);
  z-index: 0;
}

button, input, select {
  font-family: inherit;
  color: inherit;
}

button {
  cursor: pointer;
  border: none;
  background: none;
  outline: none;
}

/* App Device Frame */
.device {
  position: relative;
  width: 100%;
  max-width: 450px;
  height: 100vh;
  height: 100dvh;
  background: var(--bg-dark);
  overflow: hidden;
  box-shadow: 0 0 100px rgba(0,0,0,0.9);
  z-index: 1;
  display: flex;
  flex-direction: column;
}

@media (min-width: 500px) {
  .device {
    height: min(94vh, 920px);
    border-radius: 44px;
    border: 1px solid var(--line-color);
    box-shadow: 0 0 0 12px #0a0907, 0 0 0 13px rgba(212, 175, 55, 0.3), 0 30px 90px rgba(212, 175, 55, 0.2);
  }
}

/* Screens */
.screen {
  position: absolute;
  inset: 0;
  display: none;
  flex-direction: column;
  z-index: 1;
  background: var(--bg-dark);
}

.screen.active {
  display: flex;
  animation: fadeIn 0.5s ease-out forwards;
}

@keyframes fadeIn {
  from { opacity: 0; transform: scale(0.98); }
  to { opacity: 1; transform: scale(1); }
}

@keyframes upSlide {
  from { opacity: 0; transform: translateY(20px); }
  to { opacity: 1; transform: translateY(0); }
}

@keyframes floatY {
  0%, 100% { transform: translateY(0); }
  50% { transform: translateY(-10px); }
}

@keyframes pulseGlow {
  0%, 100% { opacity: 0.6; filter: drop-shadow(0 0 15px rgba(212,175,55,0.4)); }
  50% { opacity: 1; filter: drop-shadow(0 0 35px rgba(212,175,55,0.8)); }
}

@keyframes spin {
  to { transform: rotate(360deg); }
}

/* Starry Sky Canvas */
#starsCanvas {
  position: absolute;
  inset: 0;
  pointer-events: none;
  z-index: 0;
}

/* Brand Typography & Elements */
.brand-title {
  font-family: 'Amiri', serif;
  font-weight: 700;
  background: var(--gold-grad);
  -webkit-background-clip: text;
  background-clip: text;
  color: transparent;
  filter: drop-shadow(0 2px 10px rgba(212,175,55,0.3));
}

.crescent-svg {
  filter: drop-shadow(0 0 20px rgba(212, 175, 55, 0.6));
  animation: floatY 5s ease-in-out infinite;
}

/* Splash Screen */
#splash {
  align-items: center;
  justify-content: center;
  text-align: center;
  padding: 30px;
  background: radial-gradient(circle at 50% 35%, #1a1408 0%, #000000 80%);
}

#splash .crescent-wrap {
  width: 160px;
  height: 160px;
  margin-bottom: 25px;
  animation: pulseGlow 3s infinite ease-in-out;
}

#splash .brand-title {
  font-size: 52px;
  line-height: 1.1;
  animation: upSlide 0.8s ease-out 0.2s both;
}

#splash .tagline {
  color: var(--text-muted);
  font-size: 16px;
  margin-top: 10px;
  letter-spacing: 0.5px;
  animation: upSlide 0.8s ease-out 0.4s both;
}

.loader-bar {
  width: 160px;
  height: 3px;
  background: rgba(212, 175, 55, 0.15);
  border-radius: 3px;
  overflow: hidden;
  margin: 45px auto 0;
  position: relative;
  animation: upSlide 0.8s ease-out 0.6s both;
}

.loader-bar::after {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  height: 100%;
  width: 0%;
  background: var(--gold-grad);
  box-shadow: 0 0 12px var(--gold-main);
  animation: loadProgress 2.8s ease-in-out forwards;
}

@keyframes loadProgress {
  to { width: 100%; }
}

#splash .verse-quote {
  position: absolute;
  bottom: 40px;
  left: 20px;
  right: 20px;
  font-family: 'Amiri', serif;
  color: var(--gold-mid);
  font-size: 19px;
  opacity: 0.9;
  animation: upSlide 0.8s ease-out 0.8s both;
}

/* Login Screen */
#login {
  padding: 35px 24px;
  justify-content: space-between;
  background: radial-gradient(circle at 50% 20%, #1d160a 0%, #040404 75%);
}

.login-header {
  text-align: center;
  margin-top: 20px;
}

.login-header .crescent-wrap {
  width: 100px;
  height: 100px;
  margin: 0 auto 15px;
}

.login-header .brand-title {
  font-size: 42px;
}

.features-list {
  display: flex;
  flex-direction: column;
  gap: 14px;
  margin-top: 30px;
}

.feat-item {
  display: flex;
  align-items: center;
  gap: 16px;
  background: rgba(13, 11, 7, 0.7);
  border: 1px solid var(--line-color);
  border-radius: 20px;
  padding: 14px 18px;
  backdrop-filter: blur(10px);
  animation: upSlide 0.6s ease-out both;
}

.feat-icon {
  width: 44px;
  height: 44px;
  border-radius: 14px;
  background: rgba(212, 175, 55, 0.12);
  color: var(--gold-mid);
  display: grid;
  place-items: center;
  border: 1px solid rgba(212, 175, 55, 0.3);
  flex-shrink: 0;
}

.feat-info b {
  display: block;
  font-size: 15px;
  color: var(--text-main);
}

.feat-info small {
  color: var(--text-muted);
  font-size: 12.5px;
}

.google-btn {
  width: 100%;
  background: #ffffff;
  color: #1f1f1f;
  font-weight: 700;
  font-size: 16px;
  padding: 16px;
  border-radius: 18px;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 12px;
  box-shadow: 0 10px 25px rgba(255,255,255,0.08);
  transition: transform 0.2s, box-shadow 0.2s;
}

.google-btn:active {
  transform: scale(0.98);
}

.terms-text {
  text-align: center;
  color: var(--text-muted);
  font-size: 12px;
  margin-top: 14px;
  line-height: 1.6;
}

.terms-text a {
  color: var(--gold-mid);
  text-decoration: none;
}

/* Setup Screen */
#setup {
  padding: 30px 24px;
  overflow-y: auto;
}

.setup-steps {
  display: flex;
  gap: 6px;
  margin-bottom: 24px;
}

.setup-steps span {
  flex: 1;
  height: 4px;
  border-radius: 4px;
  background: var(--gold-grad);
}

.page-h1 {
  font-size: 26px;
  font-weight: 800;
}

.sub-title {
  color: var(--text-muted);
  font-size: 14px;
  margin-top: 6px;
  line-height: 1.6;
}

.avatar-picker {
  position: relative;
  width: 120px;
  height: 120px;
  margin: 30px auto 25px;
}

.avatar-circle {
  width: 120px;
  height: 120px;
  border-radius: 50%;
  background: var(--gold-grad);
  color: #120d04;
  font-weight: 800;
  font-size: 48px;
  display: grid;
  place-items: center;
  object-fit: cover;
  box-shadow: 0 0 0 3px var(--bg-dark), 0 0 0 5px var(--gold-main);
  overflow: hidden;
}

.avatar-cam {
  position: absolute;
  bottom: 2px;
  left: 2px;
  width: 38px;
  height: 38px;
  border-radius: 50%;
  background: var(--gold-grad);
  color: #120d04;
  display: grid;
  place-items: center;
  box-shadow: 0 4px 12px rgba(0,0,0,0.6);
  border: 3px solid var(--bg-dark);
  cursor: pointer;
}

.input-field {
  display: flex;
  flex-direction: column;
  margin-bottom: 18px;
}

.input-field label {
  font-size: 13px;
  color: var(--text-muted);
  margin-bottom: 8px;
}

.custom-input {
  width: 100%;
  background: #0c0a07;
  border: 1px solid var(--line-color);
  border-radius: 16px;
  padding: 14px 16px;
  color: var(--text-main);
  font-size: 15px;
  outline: none;
  transition: border-color 0.2s, box-shadow 0.2s;
}

.custom-input:focus {
  border-color: var(--gold-main);
  box-shadow: 0 0 0 3px rgba(212, 175, 55, 0.15);
}

.user-wrap {
  display: flex;
  align-items: center;
  direction: ltr;
  background: #0c0a07;
  border: 1px solid var(--line-color);
  border-radius: 16px;
  padding: 0 16px;
  transition: border-color 0.2s;
}

.user-wrap:focus-within {
  border-color: var(--gold-main);
  box-shadow: 0 0 0 3px rgba(212, 175, 55, 0.15);
}

.user-wrap span {
  color: var(--gold-main);
  font-weight: 700;
}

.user-wrap input {
  flex: 1;
  background: none;
  border: none;
  outline: none;
  color: var(--text-main);
  padding: 14px 6px;
  font-size: 15px;
  direction: ltr;
}

.username-status {
  font-size: 12px;
  margin-top: 6px;
  min-height: 18px;
  display: flex;
  align-items: center;
  gap: 6px;
}

.username-status.ok { color: var(--success); }
.username-status.bad { color: var(--danger); }
.username-status.wait { color: var(--text-muted); }

.gold-btn {
  background: var(--gold-grad);
  color: #120e05;
  font-weight: 800;
  border-radius: 18px;
  padding: 16px;
  width: 100%;
  font-size: 16.5px;
  box-shadow: 0 8px 25px rgba(212, 175, 55, 0.3);
  transition: transform 0.2s, opacity 0.2s;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 8px;
}

.gold-btn:active { transform: scale(0.98); }

/* Main App Shell & Nav */
#mainApp {
  background: var(--bg-dark);
}

.main-content {
  flex: 1;
  overflow-y: auto;
  overflow-x: hidden;
  padding: 0 18px 100px;
  position: relative;
  z-index: 1;
  scroll-behavior: smooth;
}

.tab-screen {
  display: none;
}

.tab-screen.active {
  display: block;
  animation: upSlide 0.4s ease-out;
}

.bottom-nav {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  height: calc(72px + env(safe-area-inset-bottom));
  padding-bottom: env(safe-area-inset-bottom);
  background: rgba(6, 5, 4, 0.95);
  backdrop-filter: blur(18px);
  -webkit-backdrop-filter: blur(18px);
  border-top: 1px solid var(--line-color);
  display: flex;
  justify-content: space-around;
  align-items: center;
  z-index: 20;
}

.nav-btn {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 4px;
  font-size: 11px;
  color: var(--text-muted);
  flex: 1;
  padding: 8px 0;
  position: relative;
  transition: color 0.2s;
}

.nav-btn.active {
  color: var(--gold-mid);
}

.nav-btn.active::before {
  content: '';
  position: absolute;
  top: -9px;
  width: 28px;
  height: 3px;
  border-radius: 3px;
  background: var(--gold-grad);
  box-shadow: 0 0 10px var(--gold-main);
}

/* Header Bar */
.top-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 20px 0 10px;
}

.user-greeting {
  display: flex;
  align-items: center;
  gap: 12px;
  cursor: pointer;
}

.user-greeting small {
  display: block;
  color: var(--text-muted);
  font-size: 12px;
}

.user-greeting b {
  font-size: 17px;
  color: var(--text-main);
}

.icon-btn {
  width: 42px;
  height: 42px;
  border-radius: 14px;
  background: var(--bg-card);
  border: 1px solid var(--line-color);
  color: var(--gold-mid);
  display: grid;
  place-items: center;
  position: relative;
  transition: background 0.2s;
}

.icon-btn:active {
  background: var(--bg-card-hover);
}

.badge-dot {
  position: absolute;
  top: -3px;
  left: -3px;
  min-width: 18px;
  height: 18px;
  border-radius: 9px;
  background: var(--danger);
  color: #fff;
  font-size: 10px;
  font-weight: 800;
  display: none;
  place-items: center;
  padding: 0 4px;
  border: 2px solid var(--bg-dark);
}

.badge-dot.active { display: grid; }

.date-ribbon {
  display: flex;
  align-items: center;
  gap: 8px;
  color: var(--text-muted);
  font-size: 13px;
  margin-bottom: 16px;
}

.date-ribbon .hijri {
  color: var(--gold-mid);
  font-weight: 700;
}

.date-dot {
  width: 4px;
  height: 4px;
  border-radius: 50%;
  background: var(--gold-dark);
}

/* Hero Prayer Card */
.hero-card {
  background: radial-gradient(circle at 10% 0%, rgba(212, 175, 55, 0.28), transparent 60%), linear-gradient(160deg, #18130a 0%, #080705 100%);
  border: 1px solid rgba(212, 175, 55, 0.35);
  border-radius: 26px;
  padding: 22px;
  position: relative;
  overflow: hidden;
  box-shadow: 0 15px 40px rgba(0,0,0,0.5), inset 0 1px 0 rgba(255,255,255,0.1);
}

.hero-mosque-bg {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 65%;
  opacity: 0.12;
  pointer-events: none;
  fill: var(--gold-main);
}

.hero-crescent {
  position: absolute;
  top: 15px;
  left: 15px;
  width: 58px;
  height: 58px;
}

.location-chip {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  font-size: 12px;
  background: rgba(212, 175, 55, 0.12);
  border: 1px solid var(--line-color);
  color: var(--gold-mid);
  padding: 5px 12px;
  border-radius: 20px;
  cursor: pointer;
}

.hero-card .label {
  color: var(--text-muted);
  font-size: 13px;
  margin-top: 14px;
}

.hero-card .prayer-title {
  font-family: 'Amiri', serif;
  font-size: 38px;
  line-height: 1.2;
  background: var(--gold-grad);
  -webkit-background-clip: text;
  background-clip: text;
  color: transparent;
}

.countdown-timer {
  font-size: 34px;
  font-weight: 800;
  margin-top: 2px;
  letter-spacing: 1px;
  font-variant-numeric: tabular-nums;
  color: var(--text-main);
}

.hero-card .prayer-at {
  color: var(--text-muted);
  font-size: 13px;
  margin-top: 4px;
}

.hero-progress {
  height: 5px;
  background: rgba(212, 175, 55, 0.15);
  border-radius: 5px;
  margin-top: 16px;
  overflow: hidden;
}

.hero-progress-bar {
  height: 100%;
  background: var(--gold-grad);
  box-shadow: 0 0 10px var(--gold-main);
  border-radius: 5px;
  transition: width 1s linear;
}

/* Prayer Times Ribbon Grid */
.prayer-ribbon {
  display: grid;
  grid-template-columns: repeat(6, 1fr);
  gap: 6px;
  margin-top: 12px;
}

@media (max-width: 370px) {
  .prayer-ribbon { grid-template-columns: repeat(3, 1fr); }
}

.pt-box {
  background: var(--bg-card);
  border: 1px solid var(--line-color);
  border-radius: 18px;
  padding: 10px 4px;
  text-align: center;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 4px;
  color: var(--gold-mid);
  transition: transform 0.2s, background 0.2s;
}

.pt-box span {
  font-size: 11px;
  color: var(--text-muted);
}

.pt-box b {
  font-size: 12px;
  color: var(--text-main);
  white-space: nowrap;
}

.pt-box.active-now {
  background: var(--gold-grad);
  border-color: transparent;
  color: #120d04;
  box-shadow: 0 8px 20px rgba(212, 175, 55, 0.35);
  transform: translateY(-3px);
}

.pt-box.active-now span, .pt-box.active-now b {
  color: #120d04;
}

.pt-box.passed { opacity: 0.45; }

/* Section Headers */
.sec-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: 24px 0 12px;
}

.sec-header h3 {
  font-size: 17px;
  font-weight: 800;
  display: flex;
  align-items: center;
  gap: 8px;
}

.sec-header h3::before {
  content: '';
  width: 4px;
  height: 18px;
  border-radius: 4px;
  background: var(--gold-grad);
}

.sec-header button, .sec-header a {
  color: var(--gold-main);
  font-size: 13px;
  text-decoration: none;
}

/* Cards & Widgets */
.card-box {
  background: var(--bg-card);
  border: 1px solid var(--line-color);
  border-radius: 22px;
  padding: 18px;
  position: relative;
  overflow: hidden;
}

.daily-dhikr-flex {
  display: flex;
  align-items: center;
  gap: 16px;
}

.dhikr-text-wrap {
  flex: 1;
}

.arabic-text {
  font-family: 'Amiri', serif;
  line-height: 2.1;
  font-size: var(--fs-base);
}

.virtue-tag {
  font-size: 13px;
  color: var(--text-muted);
  line-height: 1.7;
  margin-top: 6px;
}

.source-badge {
  display: inline-block;
  font-size: 11px;
  color: var(--gold-main);
  background: rgba(212, 175, 55, 0.08);
  border: 1px solid var(--line-faint);
  padding: 3px 10px;
  border-radius: 20px;
  margin-top: 8px;
}

.ring-btn {
  width: 82px;
  height: 82px;
  border-radius: 50%;
  position: relative;
  display: grid;
  place-items: center;
  background: radial-gradient(circle, #1c160c 0%, #0a0805 100%);
  border: 1px solid var(--line-color);
  flex-shrink: 0;
  transition: transform 0.1s;
}

.ring-btn:active { transform: scale(0.92); }

.ring-btn svg {
  position: absolute;
  inset: 0;
  transform: rotate(-90deg);
}

.ring-btn b {
  font-size: 20px;
  color: var(--gold-mid);
}

.ring-btn small {
  display: block;
  font-size: 10px;
  color: var(--text-muted);
}

/* Dua Card Special */
.dua-box {
  background: radial-gradient(circle at 90% 0%, rgba(212, 175, 55, 0.12), transparent 50%), var(--bg-card);
}

.dua-box .quote-icon {
  position: absolute;
  top: 10px;
  right: 16px;
  font-family: 'Amiri', serif;
  font-size: 60px;
  color: rgba(212, 175, 55, 0.1);
  line-height: 1;
}

.action-row {
  display: flex;
  gap: 8px;
  justify-content: center;
  margin-top: 14px;
}

.act-btn {
  width: 40px;
  height: 40px;
  border-radius: 12px;
  display: grid;
  place-items: center;
  border: 1px solid var(--line-color);
  color: var(--gold-mid);
  background: rgba(212, 175, 55, 0.04);
  transition: background 0.2s, transform 0.1s;
}

.act-btn:active { transform: scale(0.92); }
.act-btn.active { background: var(--gold-grad); color: #120e05; border-color: transparent; }

/* Quick Actions Grid */
.quick-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 10px;
}

.quick-card {
  background: var(--bg-card);
  border: 1px solid var(--line-color);
  border-radius: 20px;
  padding: 16px 8px;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 10px;
  font-size: 13px;
  font-weight: 700;
  transition: transform 0.2s, border-color 0.2s;
}

.quick-card:active { transform: scale(0.95); }

.quick-card .q-ic {
  width: 48px;
  height: 48px;
  border-radius: 16px;
  background: linear-gradient(145deg, rgba(212, 175, 55, 0.2), rgba(212, 175, 55, 0.05));
  color: var(--gold-mid);
  border: 1px solid var(--line-color);
  display: grid;
  place-items: center;
}

/* Adhkar Tab Categories */
.adhkar-cats {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 12px;
  margin-top: 14px;
}

.cat-card {
  background: linear-gradient(160deg, #151009 0%, #0a0805 100%);
  border: 1px solid var(--line-color);
  border-radius: 22px;
  padding: 16px;
  text-align: right;
  display: flex;
  flex-direction: column;
  gap: 6px;
  position: relative;
  overflow: hidden;
  transition: transform 0.2s;
}

.cat-card:active { transform: scale(0.97); }

.cat-card .c-ic {
  width: 46px;
  height: 46px;
  border-radius: 15px;
  background: rgba(212, 175, 55, 0.12);
  color: var(--gold-mid);
  display: grid;
  place-items: center;
  margin-bottom: 4px;
}

.cat-card h4 { font-size: 16px; color: var(--text-main); }
.cat-card p { font-size: 12px; color: var(--text-muted); line-height: 1.5; }

.cat-progress-bar {
  height: 4px;
  background: rgba(212, 175, 55, 0.12);
  border-radius: 4px;
  overflow: hidden;
  margin-top: 6px;
}

.cat-progress-bar span {
  display: block;
  height: 100%;
  background: var(--gold-grad);
}

/* Duas Search & Tabs */
.search-box {
  display: flex;
  align-items: center;
  gap: 10px;
  background: var(--bg-card);
  border: 1px solid var(--line-color);
  border-radius: 16px;
  padding: 0 16px;
  color: var(--text-muted);
}

.search-box input {
  flex: 1;
  background: none;
  border: none;
  outline: none;
  color: var(--text-main);
  padding: 14px 0;
  font-size: 14.5px;
}

.segment-tabs {
  display: flex;
  background: var(--bg-card);
  border: 1px solid var(--line-color);
  border-radius: 16px;
  padding: 4px;
  margin: 14px 0;
  gap: 4px;
}

.segment-tabs button {
  flex: 1;
  padding: 10px 4px;
  border-radius: 12px;
  font-size: 13.5px;
  font-weight: 700;
  color: var(--text-muted);
  transition: all 0.25s;
}

.segment-tabs button.active {
  background: var(--gold-grad);
  color: #120e05;
  box-shadow: 0 4px 12px rgba(212, 175, 55, 0.25);
}

/* List Items / Cards */
.item-group {
  background: var(--bg-card);
  border: 1px solid var(--line-color);
  border-radius: 22px;
  padding: 4px 18px;
  margin-bottom: 20px;
}

.row-item {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 12px;
  padding: 15px 0;
  border-bottom: 1px solid var(--line-faint);
  width: 100%;
  text-align: right;
}

.row-item:last-child { border-bottom: none; }

.row-left {
  display: flex;
  align-items: center;
  gap: 12px;
  flex: 1;
  min-width: 0;
}

.row-left .r-ic { color: var(--gold-mid); flex-shrink: 0; }
.row-left b { display: block; font-size: 14.5px; }
.row-left small { display: block; color: var(--text-muted); font-size: 12px; margin-top: 2px; }

/* Subpage Overlay Drawer */
.subpage {
  position: absolute;
  inset: 0;
  background: var(--bg-dark);
  z-index: 50;
  display: flex;
  flex-direction: column;
  transform: translateX(-100%);
  transition: transform 0.35s cubic-bezier(0.2, 0.8, 0.2, 1);
}

.subpage.open { transform: translateX(0); }

.subpage-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 18px 18px 14px;
  border-bottom: 1px solid var(--line-color);
  background: rgba(4, 4, 4, 0.95);
}

.subpage-header h2 { font-size: 19px; font-weight: 800; }
.subpage-body { flex: 1; overflow-y: auto; padding: 18px 18px 40px; }

/* Electronic Tasbih Interactive Screen */
.tasbih-text {
  text-align: center;
  font-family: 'Amiri', serif;
  font-size: 32px;
  color: var(--gold-mid);
  margin: 15px 0 10px;
  min-height: 60px;
  line-height: 1.3;
}

.tasbih-ring-wrap {
  position: relative;
  width: 250px;
  height: 250px;
  margin: 15px auto;
}

.tasbih-ring-wrap svg {
  position: absolute;
  inset: 0;
  transform: rotate(-90deg);
}

.tasbih-core-btn {
  position: absolute;
  inset: 20px;
  border-radius: 50%;
  background: radial-gradient(circle at 50% 30%, #2a200f 0%, #0a0805 75%);
  border: 1px solid rgba(212, 175, 55, 0.4);
  box-shadow: inset 0 2px 0 rgba(255,255,255,0.1), 0 15px 50px rgba(212, 175, 55, 0.15);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  transition: transform 0.1s;
}

.tasbih-core-btn:active { transform: scale(0.94); }

.tasbih-core-btn b {
  font-size: 58px;
  font-weight: 800;
  background: var(--gold-grad);
  -webkit-background-clip: text;
  background-clip: text;
  color: transparent;
  line-height: 1;
}

.tasbih-core-btn small {
  color: var(--text-muted);
  font-size: 13px;
  margin-top: 4px;
}

/* Qibla Compass Visual */
.compass-box {
  width: 260px;
  height: 260px;
  border-radius: 50%;
  margin: 20px auto;
  position: relative;
  border: 2px solid rgba(212, 175, 55, 0.4);
  background: radial-gradient(circle, #18120a 0%, #040404 75%);
  box-shadow: 0 0 50px rgba(212, 175, 55, 0.15), inset 0 0 30px rgba(0,0,0,0.8);
}

.compass-dial {
  position: absolute;
  inset: 0;
  transition: transform 0.3s ease-out;
}

.compass-needle {
  position: absolute;
  left: 50%;
  top: 50%;
  width: 0;
  height: 0;
}

.kaaba-icon-marker {
  position: absolute;
  width: 32px;
  height: 32px;
  margin-left: -16px;
  top: -128px;
  border-radius: 8px;
  background: #000;
  border: 2px solid var(--gold-main);
  box-shadow: 0 0 15px var(--gold-main);
  display: grid;
  place-items: center;
}

.kaaba-icon-marker::after {
  content: '';
  position: absolute;
  top: 7px;
  left: 0;
  right: 0;
  height: 4px;
  background: var(--gold-main);
}

/* Modals */
.modal-overlay {
  position: absolute;
  inset: 0;
  background: rgba(0, 0, 0, 0.8);
  backdrop-filter: blur(8px);
  display: none;
  align-items: center;
  justify-content: center;
  z-index: 100;
  padding: 20px;
}

.modal-overlay.active { display: flex; }

.google-modal-box {
  background: #ffffff;
  color: #202124;
  border-radius: 28px;
  width: 100%;
  max-width: 360px;
  padding: 26px;
  animation: upSlide 0.3s ease-out;
}

/* Adhan Full Overlay Screen */
.adhan-overlay {
  position: absolute;
  inset: 0;
  background: radial-gradient(circle at 50% 30%, #251b0a 0%, #000000 75%);
  z-index: 200;
  display: none;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  padding: 30px;
}

.adhan-overlay.active { display: flex; animation: fadeIn 0.5s; }

.adhan-title {
  font-family: 'Amiri', serif;
  font-size: 46px;
  background: var(--gold-grad);
  -webkit-background-clip: text;
  background-clip: text;
  color: transparent;
  margin: 10px 0;
}

.wave-bars {
  display: flex;
  gap: 5px;
  height: 30px;
  align-items: center;
  margin: 20px 0 35px;
}

.wave-bars span {
  width: 4px;
  background: var(--gold-main);
  border-radius: 4px;
  animation: soundWave 1s infinite ease-in-out;
}

@keyframes soundWave {
  0%, 100% { height: 6px; }
  50% { height: 28px; }
}

/* Notification Toast */
.toast-msg {
  position: absolute;
  left: 50%;
  bottom: 90px;
  transform: translate(-50%, 20px);
  opacity: 0;
  background: #18130a;
  border: 1px solid var(--gold-main);
  color: var(--gold-mid);
  padding: 12px 20px;
  border-radius: 16px;
  z-index: 300;
  transition: all 0.3s ease;
  font-size: 13.5px;
  pointer-events: none;
  box-shadow: 0 10px 30px rgba(0,0,0,0.8);
  max-width: 86%;
  text-align: center;
}

.toast-msg.show {
  opacity: 1;
  transform: translate(-50%, 0);
}

/* Adhkar Counter Visual Item */
.zk-item {
  background: var(--bg-card);
  border: 1px solid var(--line-color);
  border-radius: 20px;
  padding: 18px;
  margin-bottom: 12px;
  cursor: pointer;
  transition: all 0.2s;
}

.zk-item.done {
  opacity: 0.5;
  border-color: rgba(212, 175, 55, 0.4);
}

.zk-foot {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-top: 12px;
}

.zk-cnt-btn {
  min-width: 60px;
  height: 38px;
  border-radius: 12px;
  background: var(--gold-grad);
  color: #120e05;
  font-weight: 800;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 15px;
  padding: 0 10px;
}

.zk-item.done .zk-cnt-btn {
  background: rgba(212, 175, 55, 0.15);
  color: var(--gold-mid);
}

/* Form switch controls */
.switch-control {
  position: relative;
  width: 48px;
  height: 28px;
  display: inline-block;
}

.switch-control input { opacity: 0; width: 0; height: 0; }

.switch-slider {
  position: absolute;
  inset: 0;
  background: #231c12;
  border-radius: 20px;
  transition: 0.3s;
  cursor: pointer;
  border: 1px solid var(--line-color);
}

.switch-slider::after {
  content: '';
  position: absolute;
  top: 3px;
  right: 3px;
  width: 20px;
  height: 20px;
  border-radius: 50%;
  background: #7a6e5a;
  transition: 0.3s;
}

.switch-control input:checked + .switch-slider {
  background: var(--gold-grad);
}

.switch-control input:checked + .switch-slider::after {
  right: 23px;
  background: #120e05;
}

/* General Custom Range */
input[type=range] {
  -webkit-appearance: none;
  width: 100%;
  height: 6px;
  border-radius: 6px;
  background: rgba(212, 175, 55, 0.2);
  outline: none;
}

input[type=range]::-webkit-slider-thumb {
  -webkit-appearance: none;
  width: 22px;
  height: 22px;
  border-radius: 50%;
  background: var(--gold-grad);
  box-shadow: 0 0 10px rgba(212, 175, 55, 0.6);
  cursor: pointer;
}
</style>
</head>
<body>

<div class="device" id="appDevice">
  <!-- Star Canvas -->
  <canvas id="starsCanvas"></canvas>

  <!-- SPLASH SCREEN -->
  <section class="screen active" id="splash">
    <div class="crescent-wrap" id="splashCrescent"></div>
    <div class="brand-title">نور المؤمن</div>
    <div class="tagline">رفيقك في الذكر والصلاة والأدعية</div>
    <div class="loader-bar"></div>
    <div class="verse-quote">﴿ أَلَا بِذِكْرِ اللَّهِ تَطْمَئِنُّ الْقُلُوبُ ﴾</div>
  </section>

  <!-- LOGIN SCREEN -->
  <section class="screen" id="login">
    <div>
      <div class="login-header">
        <div class="crescent-wrap" id="loginCrescent"></div>
        <div class="brand-title">نور المؤمن</div>
        <p class="sub-title">مواقيت الصلاة، الأذكار والأدعية، وتنبيهات الأذان<br>في تطبيق واحد بروح هادئة وخير يُرتجى</p>
      </div>

      <div class="features-list">
        <div class="feat-item" style="animation-delay: 0.1s">
          <div class="feat-icon" id="fIcon1"></div>
          <div class="feat-info">
            <b>مواقيت صلاة دقيقة</b>
            <small>حسب موقعك وطريقة الحساب المفضلة لديم</small>
          </div>
        </div>
        <div class="feat-item" style="animation-delay: 0.2s">
          <div class="feat-icon" id="fIcon2"></div>
          <div class="feat-info">
            <b>أذكار وأدعية موثّقة</b>
            <small>من القرآن الكريم والسنة النبوية الشريفة</small>
          </div>
        </div>
        <div class="feat-item" style="animation-delay: 0.3s">
          <div class="feat-icon" id="fIcon3"></div>
          <div class="feat-info">
            <b>تنبيهات الأذان والمسبحة</b>
            <small>تنبيهات عند كل صلاة ومسبحة إلكترونية حديثة</small>
          </div>
        </div>
      </div>
    </div>

    <div>
      <button class="google-btn" onclick="openGoogleModal()">
        <svg width="22" height="22" viewBox="0 0 48 48">
          <path fill="#FFC107" d="M43.6 20.5H42V20H24v8h11.3C33.7 32.7 29.2 36 24 36c-6.6 0-12-5.4-12-12s5.4-12 12-12c3.1 0 5.8 1.2 7.9 3.1l5.7-5.7C34.1 6.1 29.3 4 24 4 12.9 4 4 12.9 4 24s8.9 20 20 20 20-8.9 20-20c0-1.3-.1-2.4-.4-3.5z"/>
          <path fill="#FF3D00" d="M6.3 14.7l6.6 4.8C14.7 15.1 19 12 24 12c3.1 0 5.8 1.2 7.9 3.1l5.7-5.7C34.1 6.1 29.3 4 24 4 16.3 4 9.7 8.3 6.3 14.7z"/>
          <path fill="#4CAF50" d="M24 44c5.2 0 9.9-2 13.4-5.2l-6.2-5.2C29.2 35.1 26.7 36 24 36c-5.2 0-9.6-3.3-11.3-7.9l-6.5 5C9.5 39.6 16.2 44 24 44z"/>
          <path fill="#1976D2" d="M43.6 20.5H42V20H24v8h11.3c-.8 2.2-2.2 4.2-4.1 5.6l6.2 5.2C37 39.2 44 34 44 24c0-1.3-.1-2.4-.4-3.5z"/>
        </svg>
        المتابعة باستخدام Google
      </button>
      <p class="terms-text">بالمتابعة، فإنك توافق على <a href="#" onclick="return false">شروط الاستخدام</a> و <a href="#" onclick="return false">سياسة الخصوصية</a></p>
    </div>
  </section>

  <!-- SETUP PROFILE SCREEN -->
  <section class="screen" id="setup">
    <div class="setup-steps"><span></span><span></span></div>
    <div class="page-h1">أكمل ملفك الشخصي</div>
    <p class="sub-title">خطوة أخيرة قبل أن تبدأ رحلتك مع نور المؤمن</p>

    <div class="avatar-picker">
      <div class="avatar-circle" id="setupAvPreview">ن</div>
      <label class="avatar-cam" for="setupFileInp" id="camIcon"></label>
      <input type="file" id="setupFileInp" accept="image/*" hidden>
    </div>

    <div class="input-field">
      <label>الاسم الكامل</label>
      <input type="text" class="custom-input" id="suNameInp" placeholder="مثال: عبدالله محمد" maxlength="40">
    </div>

    <div class="input-field">
      <label>اسم المستخدم</label>
      <div class="user-wrap">
        <span>@</span>
        <input type="text" id="suUserInp" placeholder="username" maxlength="20" autocomplete="off">
      </div>
      <div class="username-status" id="suUserStatus"></div>
    </div>

    <div style="flex:1;"></div>
    <button class="gold-btn" onclick="finishProfileSetup()">ابدأ رحلتك المباركة</button>
  </section>

  <!-- MAIN APPLICATION SHELL -->
  <section class="screen" id="mainApp">
    <div class="main-content" id="mainScroll">
      <!-- Tab Home -->
      <div class="tab-screen active" id="tab-home"></div>
      <!-- Tab Adhkar -->
      <div class="tab-screen" id="tab-adhkar"></div>
      <!-- Tab Duas -->
      <div class="tab-screen" id="tab-duas"></div>
      <!-- Tab Notifications -->
      <div class="tab-screen" id="tab-notifs"></div>
      <!-- Tab Profile -->
      <div class="tab-screen" id="tab-profile"></div>
    </div>

    <!-- Bottom Navigation Bar -->
    <nav class="bottom-nav" id="bottomNav"></nav>
  </section>

  <!-- GOOGLE AUTH SIMULATOR MODAL -->
  <div class="modal-overlay" id="googleModal">
    <div class="google-modal-box" id="googleModalBody"></div>
  </div>

  <!-- CONFIRMATION MODAL -->
  <div class="modal-overlay" id="confirmModal">
    <div style="background: var(--bg-card); border: 1px solid var(--line-color); border-radius: 24px; padding: 24px; width: 100%; max-width: 320px; text-align: center;">
      <p id="confirmText" style="font-size: 15px; line-height: 1.7; margin-bottom: 20px;"></p>
      <div style="display: flex; gap: 10px;">
        <button class="custom-input" style="flex: 1;" onclick="closeConfirmModal()">إلغاء</button>
        <button class="gold-btn" style="flex: 1; padding: 12px;" id="confirmOkBtn">تأكيد</button>
      </div>
    </div>
  </div>

  <!-- ADHAN SCREEN OVERLAY -->
  <div class="adhan-overlay" id="adhanScreenOverlay">
    <div class="crescent-wrap" id="adhanCrescent" style="width: 120px; height: 120px;"></div>
    <p style="color: var(--text-muted); margin-top: 20px; font-size: 15px;">حان الآن موعد أذان</p>
    <div class="adhan-title" id="adhanTitleText">صلاة الفجر</div>
    <p style="font-family: 'Amiri'; font-size: 24px; color: var(--gold-mid); margin-top: 10px;" id="adhanSubText">اللَّهُ أَكْبَرُ اللَّهُ أَكْبَرُ</p>
    <p style="color: var(--text-muted); margin: 8px 0 20px;" id="adhanCityText"></p>
    <div class="wave-bars">
      <span style="animation-delay: 0.1s"></span>
      <span style="animation-delay: 0.3s"></span>
      <span style="animation-delay: 0.2s"></span>
      <span style="animation-delay: 0.5s"></span>
      <span style="animation-delay: 0.4s"></span>
    </div>
    <button class="gold-btn" style="max-width: 220px;" onclick="stopAdhanOverlay()">إيقاف الأذان</button>
  </div>

  <!-- TOAST NOTIFICATION -->
  <div class="toast-msg" id="toastMsg"></div>
</div>

<script>
/* ==================== SVG ICONS UTILITY ==================== */
const ICONS = {
  home: '<path d="M3 11l9-8 9 8v9a1 1 0 0 1-1 1h-5v-6H9v6H4a1 1 0 0 1-1-1z"/>',
  beads: '<circle cx="12" cy="4.5" r="2"/><circle cx="17.5" cy="7.5" r="2"/><circle cx="6.5" cy="7.5" r="2"/><circle cx="18.5" cy="13.5" r="2"/><circle cx="5.5" cy="13.5" r="2"/><path d="M12 16v6M9.5 22h5"/>',
  book: '<path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20V3H6.5A2.5 2.5 0 0 0 4 5.5z"/><path d="M4 19.5A2.5 2.5 0 0 0 6.5 22H20v-5"/>',
  bell: '<path d="M6 8a6 6 0 1 1 12 0c0 7 3 8 3 8H3s3-1 3-8"/><path d="M10 20a2 2 0 0 0 4 0"/>',
  user: '<circle cx="12" cy="8" r="4"/><path d="M4 21a8 8 0 0 1 16 0"/>',
  gear: '<circle cx="12" cy="12" r="3"/><path d="M19.4 15a1.7 1.7 0 0 0 .3 1.8l.1.1a2 2 0 1 1-2.8 2.8l-.1-.1a1.7 1.7 0 0 0-1.8-.3 1.7 1.7 0 0 0-1 1.5V21a2 2 0 1 1-4 0v-.1a1.7 1.7 0 0 0-1.1-1.5 1.7 1.7 0 0 0-1.8.3l-.1.1a2 2 0 1 1-2.8-2.8l.1-.1a1.7 1.7 0 0 0 .3-1.8 1.7 1.7 0 0 0-1.5-1H3a2 2 0 1 1 0-4h.1a1.7 1.7 0 0 0 1.5-1.1 1.7 1.7 0 0 0-.3-1.8l-.1-.1a2 2 0 1 1 2.8-2.8l.1.1a1.7 1.7 0 0 0 1.8.3H9a1.7 1.7 0 0 0 1-1.5V3a2 2 0 1 1 4 0v.1a1.7 1.7 0 0 0 1 1.5 1.7 1.7 0 0 0 1.8-.3l.1-.1a2 2 0 1 1 2.8 2.8l-.1.1a1.7 1.7 0 0 0-.3 1.8V9a1.7 1.7 0 0 0 1.5 1H21a2 2 0 1 1 0 4h-.1a1.7 1.7 0 0 0-1.5 1z"/>',
  compass: '<circle cx="12" cy="12" r="9"/><path d="M15.5 8.5l-2 5-5 2 2-5z"/>',
  sun: '<circle cx="12" cy="12" r="4"/><path d="M12 2v2M12 20v2M4.9 4.9l1.4 1.4M17.7 17.7l1.4 1.4M2 12h2M20 12h2M4.9 19.1l1.4-1.4M17.7 6.3l1.4-1.4"/>',
  sunrise: '<path d="M17 18a5 5 0 0 0-10 0"/><path d="M12 2v7M4.2 10.2l1.4 1.4M1 18h2M21 18h2M18.4 11.6l1.4-1.4M23 22H1M8 6l4-4 4 4"/>',
  sunset: '<path d="M17 18a5 5 0 0 0-10 0"/><path d="M12 9V2M4.2 10.2l1.4 1.4M1 18h2M21 18h2M18.4 11.6l1.4-1.4M23 22H1M16 5l-4 4-4-4"/>',
  mosque: '<path d="M12 3c-3 2-5 4-5 7h10c0-3-2-5-5-7z"/><path d="M5 21V10M19 21V10M3 21h18M7 21v-8h10v8"/><path d="M10 21v-3a2 2 0 0 1 4 0v3"/>',
  back: '<path d="M9 6l6 6-6 6"/>',
  fwd: '<path d="M15 18l-6-6 6-6"/>',
  play: '<path d="M7 4l13 8-13 8z"/>',
  copy: '<rect x="9" y="9" width="12" height="12" rx="2"/><path d="M5 15V5a2 2 0 0 1 2-2h8"/>',
  share: '<circle cx="18" cy="5" r="3"/><circle cx="6" cy="12" r="3"/><circle cx="18" cy="19" r="3"/><path d="M8.6 13.5l6.8 4M15.4 6.5l-6.8 4"/>',
  heart: '<path d="M20.8 4.6a5.5 5.5 0 0 0-7.8 0L12 5.7l-1-1.1a5.5 5.5 0 0 0-7.8 7.8L12 21l8.8-8.6a5.5 5.5 0 0 0 0-7.8z"/>',
  check: '<path d="M20 6L9 17l-5-5"/>',
  camera: '<path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/><circle cx="12" cy="13" r="4"/>',
  vol: '<path d="M11 5L6 9H2v6h4l5 4z"/><path d="M15.5 8.5a5 5 0 0 1 0 7M19 5a10 10 0 0 1 0 14"/>',
  mute: '<path d="M11 5L6 9H2v6h4l5 4z"/><path d="M23 9l-6 6M17 9l6 6"/>',
  logout: '<path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4M16 17l5-5-5-5M21 12H9"/>',
  pin: '<path d="M12 21s-7-6.5-7-12a7 7 0 0 1 14 0c0 5.5-7 12-7 12z"/><circle cx="12" cy="9" r="2.5"/>',
  search: '<circle cx="11" cy="11" r="7"/><path d="M21 21l-4.3-4.3"/>',
  refresh: '<path d="M21 12a9 9 0 1 1-3-6.7L21 8"/><path d="M21 3v5h-5"/>',
  edit: '<path d="M12 20h9"/><path d="M16.5 3.5a2.1 2.1 0 0 1 3 3L7 19l-4 1 1-4z"/>',
  clock: '<circle cx="12" cy="12" r="9"/><path d="M12 7v5l3 2"/>',
  star: '<path d="M12 2l3 6.5 7 1-5 5 1.2 7L12 18l-6.2 3.5L7 14.5l-5-5 7-1z"/>',
  fire: '<path d="M12 2s5 4 5 10a5 5 0 0 1-10 0c0-2 1-4 2-5 0 2 1 3 2 3 0-4 1-6 1-8z"/>',
  trash: '<path d="M3 6h18M8 6V4h8v2M6 6l1 15h10l1-15"/>'
};

function getIcon(name, size = 22, strokeWidth = 2) {
  return `<svg width="${size}" height="${size}" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="${strokeWidth}" stroke-linecap="round" stroke-linejoin="round">${ICONS[name]||''}</svg>`;
}

/* Golden Crescent Generator */
function getCrescentSVG() {
  return `<svg viewBox="0 0 100 100" class="crescent-svg">
    <defs>
      <linearGradient id="cresGrad" x1="0" y1="0" x2="1" y2="1">
        <stop offset="0%" stop-color="#fff8d6"/>
        <stop offset="50%" stop-color="#d4af37"/>
        <stop offset="100%" stop-color="#8e6c1e"/>
      </linearGradient>
      <mask id="cresMask">
        <rect width="100" height="100" fill="#ffffff"/>
        <circle cx="62" cy="40" r="32" fill="#000000"/>
      </mask>
    </defs>
    <circle cx="46" cy="54" r="38" fill="url(#cresGrad)" mask="url(#cresMask)"/>
    <polygon points="72,32 75,40 83,40 76,45 79,53 72,48 65,53 68,45 61,40 69,40" fill="url(#cresGrad)"/>
  </svg>`;
}

/* Arabic Number Converter */
const AR_DIGITS = ['٠','١','٢','٣','٤','٥','٦','٧','٨','٩'];
function toArNum(val) {
  return String(val).replace(/\d/g, d => AR_DIGITS[d]);
}
function pad2(n) { return String(n).padStart(2, '0'); }

/* ==================== STATE MANAGEMENT ==================== */
const DEFAULT_STATE = {
  user: null, // { name, username, email, photo }
  settings: {
    city: 'makkah',
    cityName: 'مكة المكرمة',
    lat: 21.4225,
    lng: 39.8262,
    zone: 'Asia/Riyadh',
    method: 'umm',
    asr: 1,
    h12: true,
    font: 20,
    vibrate: true,
    browserNotif: false
  },
  adhan: {
    modes: { fajr: 'adhan', dhuhr: 'adhan', asr: 'adhan', maghrib: 'adhan', isha: 'adhan' },
    sound: 'full',
    volume: 0.8
  },
  reminders: { before: 10, morning: true, evening: true, kahf: true },
  stats: { tasbihTotal: 0, completedAdhkar: 0, days: [] },
  progress: { date: '', data: {}, done: {} },
  daily: { date: '', count: 0 },
  tasbih: { i: 0, count: 0, target: 33 },
  favs: [],
  notifications: [],
  firedEvents: {}
};

let appState = {};

function loadState() {
  try {
    const saved = localStorage.getItem('noor_app_state_v2');
    appState = saved ? JSON.parse(saved) : JSON.parse(JSON.stringify(DEFAULT_STATE));
  } catch(e) {
    appState = JSON.parse(JSON.stringify(DEFAULT_STATE));
  }
}

function saveState() {
  try {
    localStorage.setItem('noor_app_state_v2', JSON.stringify(appState));
  } catch(e) {}
}

loadState();

function getTodayString() {
  const d = new Date();
  return `${d.getFullYear()}-${d.getMonth()+1}-${d.getDate()}`;
}

/* Sound Generator (Web Audio API Synthesizer fallback) */
let audioCtx = null;
function playBeep(type = 'tap') {
  if (!appState.settings.vibrate) return;
  try {
    audioCtx = audioCtx || new (window.AudioContext || window.webkitAudioContext)();
    const osc = audioCtx.createOscillator();
    const gain = audioCtx.createGain();
    osc.connect(gain);
    gain.connect(audioCtx.destination);
    
    if (type === 'tap') {
      osc.frequency.setValueAtTime(440, audioCtx.currentTime);
      gain.gain.setValueAtTime(0.08, audioCtx.currentTime);
      gain.gain.exponentialRampToValueAtTime(0.001, audioCtx.currentTime + 0.05);
      osc.start();
      osc.stop(audioCtx.currentTime + 0.05);
    } else if (type === 'success') {
      osc.frequency.setValueAtTime(587.33, audioCtx.currentTime);
      osc.frequency.setValueAtTime(880, audioCtx.currentTime + 0.1);
      gain.gain.setValueAtTime(0.15, audioCtx.currentTime);
      gain.gain.exponentialRampToValueAtTime(0.001, audioCtx.currentTime + 0.3);
      osc.start();
      osc.stop(audioCtx.currentTime + 0.3);
    }
  } catch(e) {}
}

function triggerVibration(pattern = 15) {
  if (appState.settings.vibrate && navigator.vibrate) {
    try { navigator.vibrate(pattern); } catch(e) {}
  }
  playBeep('tap');
}

/* Toast Message Utility */
let toastTimeout;
function showToast(msg) {
  const t = document.getElementById('toastMsg');
  t.textContent = msg;
  t.classList.add('show');
  clearTimeout(toastTimeout);
  toastTimeout = setTimeout(() => t.classList.remove('show'), 2800);
}

/* Avatar Renderer */
function renderAvatarHTML(size, photo, name) {
  const photoUrl = photo !== undefined ? photo : appState.user?.photo;
  const displayName = name !== undefined ? name : (appState.user?.name || 'م');
  if (photoUrl) {
    return `<img class="avatar-circle" src="${photoUrl}" style="width:${size}px;height:${size}px;" alt="Profile">`;
  }
  const firstLetter = (displayName.trim()[0] || 'ن').toUpperCase();
  return `<div class="avatar-circle" style="width:${size}px;height:${size}px;font-size:${size * 0.42}px">${firstLetter}</div>`;
}

/* ==================== DATA SOURCES ==================== */
const ADHKAR_DATA = {
  morning: {
    title: 'أذكار الصباح',
    sub: 'من بعد صلاة الفجر حتى الشروق',
    icon: 'sunrise',
    items: [
      { t: 'اللَّهُ لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلَّا بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلَّا بِمَا شَاءَ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ وَلَا يَئُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ', c: 1, r: 'آية الكرسي - البقرة ٢٥٥' },
      { t: 'قُلْ هُوَ اللَّهُ أَحَدٌ ۝ اللَّهُ الصَّمَدُ ۝ لَمْ يَلِدْ وَلَمْ يُولَدْ ۝ وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ', c: 3, r: 'سورة الإخلاص' },
      { t: 'قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ ۝ مِنْ شَرِّ مَا خَلَقَ ۝ وَمِنْ شَرِّ غَاسِقٍ إِذَا وَقَبَ ۝ وَمِنْ شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ ۝ وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ', c: 3, r: 'سورة الفلق' },
      { t: 'قُلْ أَعُوذُ بِرَبِّ النَّاسِ ۝ مَلِكِ النَّاسِ ۝ إِلَهِ النَّاسِ ۝ مِنْ شَرِّ الْوَسْوَاسِ الْخَنَّاسِ ۝ الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ ۝ مِنَ الْجِنَّةِ وَالنَّاسِ', c: 3, r: 'سورة الناس' },
      { t: 'أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ، لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ', c: 1, r: 'رواه مسلم' },
      { t: 'اللَّهُمَّ أَنْتَ رَبِّي لَا إِلَهَ إِلَّا أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوءُ بِذَنْبِي فَاغْفِرْ لِي فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ', c: 1, r: 'سيد الاستغفار - رواه البخاري' },
      { t: 'بِسْمِ اللَّهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ', c: 3, r: 'رواه الترمذي' },
      { t: 'رَضِيتُ بِاللَّهِ رَبًّا، وَبِالْإِسْلَامِ دِينًا، وَبِمُحَمَّدٍ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ نَبِيًّا', c: 3, r: 'رواه أبو داود' },
      { t: 'يَا حَيُّ يَا قَيُّومُ بِرَحْمَتِكَ أَسْتَغِيثُ، أَصْلِحْ لِي شَأْنِي كُلَّهُ، وَلَا تَكِلْنِي إِلَى نَفْسِي طَرْفَةَ عَيْنٍ', c: 1, r: 'رواه الحاكم' },
      { t: 'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ', c: 100, r: 'رواه مسلم', v: 'حُطَّت خطاياه وإن كانت مثل زبد البحر' }
    ]
  },
  evening: {
    title: 'أذكار المساء',
    sub: 'من بعد صلاة العصر حتى المغرب',
    icon: 'sunset',
    items: [
      { t: 'اللَّهُ لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ...', c: 1, r: 'آية الكرسي' },
      { t: 'قُلْ هُوَ اللَّهُ أَحَدٌ...', c: 3, r: 'سورة الإخلاص' },
      { t: 'قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ...', c: 3, r: 'سورة الفلق' },
      { t: 'قُلْ أَعُوذُ بِرَبِّ النَّاسِ...', c: 3, r: 'سورة الناس' },
      { t: 'أَمْسَيْنَا وَأَمْسَى الْمُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ، لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ', c: 1, r: 'رواه مسلم' },
      { t: 'اللَّهُمَّ أَنْتَ رَبِّي لَا إِلَهَ إِلَّا أَنْتَ...', c: 1, r: 'سيد الاستغفار' },
      { t: 'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ', c: 3, r: 'رواه مسلم' },
      { t: 'بِسْمِ اللَّهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ...', c: 3, r: 'رواه الترمذي' }
    ]
  },
  prayer: {
    title: 'أذكار بعد الصلاة',
    sub: 'تُقال عقب كل صلاة مفرودة',
    icon: 'mosque',
    items: [
      { t: 'أَسْتَغْفِرُ اللَّهَ (ثَلَاثًا)، اللَّهُمَّ أَنْتَ السَّلَامُ وَمِنْكَ السَّلَامُ، تَبَارَكْتَ يَا ذَا الْجَلَالِ وَالْإِكْرَامِ', c: 1, r: 'رواه مسلم' },
      { t: 'سُبْحَانَ اللَّهِ', c: 33, r: 'رواه مسلم' },
      { t: 'الْحَمْدُ لِلَّهِ', c: 33, r: 'رواه مسلم' },
      { t: 'اللَّهُ أَكْبَرُ', c: 33, r: 'رواه مسلم' },
      { t: 'لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ', c: 1, r: 'تمام المائة - مسلم' }
    ]
  },
  sleep: {
    title: 'أذكار النوم',
    sub: 'حصنك المنيع قبل المنام',
    icon: 'book',
    items: [
      { t: 'بِاسْمِكَ رَبِّي وَضَعْتُ جَنْبِي وَبِكَ أَرْفَعُهُ، إِنْ أَمْسَكْتَ نَفْسِي فَارْحَمْهَا، وَإِنْ أَرْسَلْتَهَا فَاحْفَظْهَا بِمَا تَحْفَظُ بِهِ عِبَادَكَ الصَّالِحِينَ', c: 1, r: 'متفق عليه' },
      { t: 'اللَّهُمَّ قِنِي عَذَابَكَ يَوْمَ تَبْعَثُ عِبَادَكَ', c: 3, r: 'رواه أبو داود' },
      { t: 'بِاسْمِكَ اللَّهُمَّ أَمُوتُ وَأَحْيَا', c: 1, r: 'رواه البخاري' }
    ]
  }
};

const DUAS_DATA = {
  quran: [
    { id: 'q1', t: 'رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ', r: 'سورة البقرة - ٢٠١' },
    { id: 'q2', t: 'رَبِّ اشْرَحْ لِي صَدْرِي ۝ وَيَسِّرْ لِي أَمْرِي ۝ وَاحْلُلْ عُقْدَةً مِنْ لِسَانِي ۝ يَفْقَهُوا قَوْلِي', r: 'سورة طه - ٢٥' },
    { id: 'q3', t: 'رَبَّنَا لَا تُزِغْ قُلُوبَنَا بَعْدَ إِذْ هَدَيْتَنَا وَهَبْ لَنَا مِنْ لَدُنْكَ رَحْمَةً إِنَّكَ أَنْتَ الْوَهَّابُ', r: 'سورة آل عمران - ٨' },
    { id: 'q4', t: 'لَا إِلَهَ إِلَّا أَنْتَ سُبْحَانَكَ إِنِّي كُنْتُ مِنَ الظَّالِمِينَ', r: 'سورة الأنبياء - ٨٧' },
    { id: 'q5', t: 'رَبِّ اجْعَلْنِي مُقِيمَ الصَّلَاةِ وَمِنْ ذُرِّيَّتِي رَبَّنَا وَتَقَبَّلْ دُعَاءِ', r: 'سورة إبراهيم - ٤٠' },
    { id: 'q6', t: 'رَبِّ إِنِّي لِمَا أَنْزَلْتَ إِلَيَّ مِنْ خَيْرٍ فَقِيرٌ', r: 'سورة القصص - ٢٤' }
  ],
  sunnah: [
    { id: 's1', t: 'اللَّهُمَّ إِنِّي أَسْأَلُكَ الْهُدَى وَالتُّقَى وَالْعَفَافَ وَالْغِنَى', r: 'رواه مسلم' },
    { id: 's2', t: 'يَا مُقَلِّبَ الْقُلُوبِ ثَبِّتْ قَلْبِي عَلَى دِينِكَ', r: 'رواه الترمذي' },
    { id: 's3', t: 'اللَّهُمَّ إِنَّكَ عَفُوٌّ تُحِبُّ الْعَفْوَ فَاعْفُ عَنِّي', r: 'رواه الترمذي' },
    { id: 's4', t: 'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْهَمِّ وَالْحَزَنِ، وَالْعَجْزِ وَالْكَسَلِ، وَالْبُخْلِ وَالْجُبْنِ', r: 'رواه البخاري' },
    { id: 's5', t: 'اللَّهُمَّ أَصْلِحْ لِي دِينِي الَّذِي هُوَ عِصْمَةُ أَمْرِي، وَأَصْلِحْ لِي دُنْيَايَ الَّتِي فِيهَا مَعَاشِي', r: 'رواه مسلم' }
  ]
};

const DAILY_DHIKR_LIST = [
  { t: 'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ، سُبْحَانَ اللَّهِ الْعَظِيمِ', v: 'كلمتان خفيفتان على اللسان، ثقيلتان في الميزان، حبيبتان إلى الرحمن', r: 'متفق عليه', goal: 100 },
  { t: 'لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ', v: 'كنزٌ عظِيم من كُنُوزِ الجَنَّةِ', r: 'متفق عليه', goal: 100 },
  { t: 'اللَّهُمَّ صَلِّ وَسَلِّمْ عَلَى نَبِيِّنَا مُحَمَّدٍ', v: 'من صلّى عليّ صلاةً صلّى الله عليه بها عشرًا', r: 'رواه مسلم', goal: 100 },
  { t: 'أَسْتَغْفِرُ اللَّهَ وَأَتُوبُ إِلَيْهِ', v: 'طُوبَى لِمَنْ وَجَدَ فِي صَحِيفَتِهِ اسْتِغْفَارًا كَثِيرًا', r: 'رواه ابن ماجه', goal: 100 }
];

const TASBIH_PHRASES = [
  'سُبْحَانَ اللَّهِ',
  'الْحَمْدُ لِلَّهِ',
  'اللَّهُ أَكْبَرُ',
  'لَا إِلَهَ إِلَّا اللَّهُ',
  'أَسْتَغْفِرُ اللَّهَ وَأَتُوبُ إِلَيْهِ',
  'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ',
  'لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ',
  'اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ'
];

const CITIES_LIST = {
  makkah: ['مكة المكرمة', 21.4225, 39.8262, 'Asia/Riyadh'],
  madinah: ['المدينة المنورة', 24.4672, 39.6111, 'Asia/Riyadh'],
  riyadh: ['الرياض', 24.7136, 46.6753, 'Asia/Riyadh'],
  cairo: ['القاهرة', 30.0444, 31.2357, 'Africa/Cairo'],
  quds: ['القدس الشريف', 31.7683, 35.2137, 'Asia/Jerusalem'],
  dubai: ['دبي', 25.2048, 55.2708, 'Asia/Dubai'],
  amman: ['عمّان', 31.9454, 35.9284, 'Asia/Amman'],
  baghdad: ['بغداد', 33.3152, 44.3661, 'Asia/Baghdad'],
  istanbul: ['إسطنبول', 41.0082, 28.9784, 'Europe/Istanbul'],
  london: ['لندن', 51.5074, -0.1278, 'Europe/London']
};

const PRAYERS_CONFIG = [
  { k: 'fajr', n: 'الفجر', ic: 'moon' },
  { k: 'sunrise', n: 'الشروق', ic: 'sunrise' },
  { k: 'dhuhr', n: 'الظهر', ic: 'sun' },
  { k: 'asr', n: 'العصر', ic: 'sun' },
  { k: 'maghrib', n: 'المغرب', ic: 'sunset' },
  { k: 'isha', n: 'العشاء', ic: 'moon' }
];

/* ==================== PRAYER TIME CALCULATION ENGINE ==================== */
function getJulianDay(year, month, day) {
  if (month <= 2) { year -= 1; month += 12; }
  const A = Math.floor(year / 100);
  const B = 2 - A + Math.floor(A / 4);
  return Ma