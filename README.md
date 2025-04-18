# How to use

1. Copy `com.username.createweeklymarkdown.plist` to `~/Library/LaunchAgents`
2. Modify the copied `com.username.createweeklymarkdown.plist` to match paths and username on your Mac
3. To unload and load the script, run these commands:

```shell
launchctl unload ~/Library/LaunchAgents/com.username.createweeklymarkdown.plist
launchctl load ~/Library/LaunchAgents/com.username.createweeklymarkdown.plist
```
