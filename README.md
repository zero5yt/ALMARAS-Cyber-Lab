# My Termux Cybersecurity Lab

Automated setup for Metasploit Framework and Ngrok Tunneling in Termux.

## 🛠 Installation
1. `git clone https://github.com/[YOUR_USERNAME]/[REPO_NAME]`
2. `cd [REPO_NAME]`
3. `chmod +x setup.sh`
4. `./setup.sh`

## 🚀 How to use
- **Session 1 (Ngrok):** `termux-chroot` then `./ngrok tcp 4444`
- **Session 2 (Metasploit):** `proot-distro login ubuntu` then `msfconsole`
- **Session 3 (Payloads):** Use `msfvenom` with your Ngrok address.

## ⚠️ Disclaimer
This project is for **educational purposes only**. The author is not responsible for any misuse. Always practice ethical hacking.
