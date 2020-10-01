## Control Minecraft server with Discord bot.
Use discord bot commands to control Minecraft server. Either use subprocess, Tmux or RCON to send commands to server. 
Includes extra features a backup/restore system for world saves, edit server.properties file and update server.jar.

See [releases](https://github.com/dthomas550/slime_server/releases).

### Features:
- Basic commands: Kick, ban, pardon, kill, whisiper, teleport, save-all, and broadcast.
- Change world weather and time.
- Time limited gamemode or OP status change.
- Show online players, and banned. Showing OPed and whitelist will not work with RCON.
- World save backup and restore system. Also has server folder backup/restore feature. These features need direct access to server files.
- Server stop, active status, and get version. Need Tmux to start, restart and read server log.
- If have access to local server, bot can edit properties in server.properties file, download latest server.jar from official Minecraft website.
- If you don't have access to local server files you can use the bot just with RCON, but you will be limited to just Minecraft RCON commands.
- Optionally run Minecraft server as a subprocess with subprocess.Popen(). Note, if the bot stops so will the server.


### Requirements:
- [Python3](https://www.python.org/)
- [Java 64bit](https://www.java.com/en/download/linux_manual.jsp)
- [Tmux](https://github.com/tmux/tmux/wiki) (Optionaal)
- [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10) (Optional)

### Python Modules:
- [discord.py](https://github.com/Rapptz/discord.py)
- [asyncio](https://docs.python.org/3/library/asyncio.html),[time](https://docs.python.org/3/library/time.html)

Extra Modules:
- [subprocess](https://docs.python.org/3/library/subprocess.html), [fileinput](https://docs.python.org/3/library/fileinput.html), [requests](https://pypi.org/project/requests/), [shutil](https://docs.python.org/3/library/shutil.html), [json](https://docs.python.org/3/library/json.html), [csv](https://docs.python.org/3/library/csv.html), [sys](https://docs.python.org/3/library/sys.html), [os](https://docs.python.org/3/library/os.html), [re](https://docs.python.org/3/library/re.html)
- [beautifulsoup4](https://pypi.org/project/beautifulsoup4/)
- [file-read-backwards](https://pypi.org/project/file-read-backwards/)
- [mctools](https://pypi.org/project/mctools/) (For RCON)


### Initial Startup:
1. Get Discord bot token or create a new bot at this [portal](https://discord.com/developers/applications), then update `discord_bot_token_file` variable in `server_functions.py`.
2. In `server_functions.py` update directory paths and file paths variables as needed. Also update `use_rcon`, `use_tmux`, `use_subprocess`, and `local_files_access` boolean variables for your setup.
3. Run `python3 run_bot.py setup` which well setup required enviorment and/or folder structure as needed.
4. A) If already have Minecraft server move, contents to `/server` folder created by the script, then use `?start` command in discord.\
B) Or use `?update` or `python3 run_bot.py download` to download latest server.jar file from official Minecraft website. eula.txt will be updated automatically.
5. Read through the help pages with `?help` or `?help2` in Discord and `python3 run_bot.py help` for script functions.

## Using Virtualenv:
Create Python Virtualenvt:
```bash
virtualenv ~/pyenv/minecraft_discord_bot
```
Activate new Python Virtualenv:
```bash
source ~/pyenv/minecraft_discord_bot/bin/activate
```
Install required Python modules:
```bash
pip3 install discord asyncio file-read-backwards mctools
```

