import numpy as np
import cv2
from discord_webhook import DiscordWebhook

def send_discord_notification():
  webhook = DiscordWebhook(url="", content="Hello from test.")
  response = webhook.execute()

def main():
  send_discord_notification()
  print("notification sent")


if __name__ == "__main__":
    main()
