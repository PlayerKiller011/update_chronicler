import sys, json
assets = json.load(sys.stdin)["assets"]
url = ""
for x in assets:
  browser_download_url = x["browser_download_url"]
  if browser_download_url.endswith(".deb"):
    url = browser_download_url
    break
print(url)
