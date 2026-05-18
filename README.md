# How Many Robberies Left Calculator for Jailbreak
## How to use
1. Download HMRL Calculator.exe
2. Run the file
3. Select your current grinding level (1-5)
4. Enter your server type (vip, small, big)
5. Enter your current pity progress shown in game, based on the server type where the progress was earned
6. Get the result
## Source Code
You can review the program code by downloading the .ps1 file. The .exe version is a converted file for a more convenient launch.
## Calculation Logic
The tool uses the following formula to determine your progress:

Robberies = (MaxPity - CurrentPity) / PityPerRobbery

The values are automatically adjusted based on whether you are in a Big server (MaxPity = 100) or a Small/VIP server (MaxPity = 66.66666). Upon reaching 66.66666% pity on a Small/VIP server, joining a Big Public server will multiply this value by 1.5, increasing it to 100%.

*Created by Claude and s1rgei*
