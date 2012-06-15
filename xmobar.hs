-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1920x1080 monitors, with the right monitor as primary
Config {
    font = "xft:Ubuntu Mono-9",
    bgColor = "#000000",
    fgColor = "#ffffff",
    position =  TopW L 94,
    lowerOnStart = True,
    commands = [
        Run Weather "EDDW" ["-t","<tempC>C <skyCondition>","-L","64","-H","77","-n","#99CC00","-h","#FF4444","-l","#33B5E5"] 36000,
        Run DiskU [("/", "/: <usedbar>"), ("/home", "/home: <usedbar>")] ["-L", "20", "-H", "50", "-m", "1", "-p", "3","-h","#FF4444","-l","#99CC00","-n","#FFBB33"] 20,
        Run MultiCpu ["-t","Cpu: <autototal>","-L","32","-H","60","-h","#FF4444","-l","#99CC00","-n","#FFBB33","-w","1"] 10,
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FF4444","-l","#99CC00","-n","#FFBB33"] 10,
        Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#FF4444","-l","#99CC00","-n","#FFBB33"] 10,
        Run Network "eth0" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#FF4444","-l","#99CC00","-n","#FFBB33"] 10,
        Run Date "%a %b %_d %H:%M" "date" 10,
        Run BatteryP ["BAT0"] ["-t", "<acstatus><watts> (<left>%)", "-L", "10", "-H", "80", "-p", "3", "--", "-O", "<fc=green>On</fc> - ", "-o", "", "-L", "-15", "-H", "-5", "-l", "red", "-m", "blue", "-h", "green", "-c", "charge_full_design"] 600,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %disku%   %multicpu%   %memory%   %swap%   %eth0%   <fc=#FFBB33>%date%</fc>   %EDDW% %battery%"
}
