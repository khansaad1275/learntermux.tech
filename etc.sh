import smtplib
from email.mime.text import MIMEText
import time

# ✅ SETTINGS
YOUR_EMAIL = "khansaad1276@gmail.com"
APP_PASSWORD = "ozib pmor ovim xfrj"
TO_EMAIL = "naushadkhan1275007@gmail.com"
SEND_INTERVAL = 1800  # seconds = 30 mins

def send_hey_email():
    subject = "Yo!"
    body = "hey"
    msg = MIMEText(body)
    msg["Subject"] = subject
    msg["From"] = YOUR_EMAIL
    msg["To"] = TO_EMAIL

    try:
        print(f"Sending email to {TO_EMAIL}...")
        server = smtplib.SMTP("smtp.gmail.com", 587)
        server.starttls()
        server.login(YOUR_EMAIL, APP_PASSWORD)
        server.sendmail(YOUR_EMAIL, TO_EMAIL, msg.as_string())
        server.quit()
        print("✅ Sent successfully!\n")
    except Exception as e:
        print(f"❌ Failed to send: {e}")

while True:
    send_hey_email()
    print(f"⏳ Waiting {SEND_INTERVAL // 60} minutes before next email...")
    time.sleep(SEND_INTERVAL)