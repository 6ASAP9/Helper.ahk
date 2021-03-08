#SingleInstance, Force
#NoTrayIcon
#NoEnv
SetWorkingDir %A_ScriptDir%
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0

SplashTextoff
ListLines Off
Process, Priority, , A
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
reloadStatus = 0
DayANS = 0
WeekANS = 0
FormatTime, CurrentDate,, ddMM
IniRead, Week, Settings.ini, ANS, Week
IniRead, CurrentDateT, Settings.ini, ANS, CurrentDateT
if CurrentDateT=%CurrentDate%
{
IniRead, CurrentDateT, Settings.ini, ANS, CurrentDateT
IniRead, DayANS, Settings.ini, ANS, DayANS
}
else
{
    IniWrite, %CurrentDate%, Settings.ini, ANS, CurrentDateT
    IniWrite, %DayANS%, Settings.ini, ANS, DayANS
    IniRead, DayANS, Settings.ini, ANS, DayANS
    IniRead, CurrentDateT, Settings.ini, ANS, CurrentDateT
}
if Week=%A_YWeek%
{
IniRead, Week, Settings.ini, ANS, Week
IniRead, WeekANS, Settings.ini, ANS, WeekANS
}
else
{
    IniWrite, %A_YWeek%, Settings.ini, ANS, Week
    IniWrite, %WeekANS%, Settings.ini, ANS, WeekANS
    IniRead, WeekANS, Settings.ini, ANS, WeekANS
    IniRead, Week, Settings.ini, ANS, Week
}
IniRead, Radio1, Settings.ini, Settings, 1920x1080
IniRead, Radio2, Settings.ini, Settings, 2554x1411
IniRead, Radio3, Settings.ini, Settings, Male
IniRead, Radio4, Settings.ini, Settings, Female
IniRead, Radio7, Settings.ini, Settings, 1600x900
IniRead, Radio5, Settings.ini, Settings, 1440x900
IniRead, Radio6, Settings.ini, Settings, 1680x1050
IniRead, Radio13, Settings.ini, Settings, 1366x768
IniRead, Radio14, Settings.ini, Settings, 1280x960
IniRead, Radio15, Settings.ini, Settings, 2560х1440
IniRead, Radio8, Settings.ini, Settings, /killlog
IniRead, Radio9, Settings.ini, Settings, /showcheats
IniRead, Radio10, Settings.ini, Settings, /dl
IniRead, Radio11, Settings.ini, Settings, /esp
IniRead, Radio12, Settings.ini, Settings, /templeader
IniRead, Radio18, Settings.ini, Settings, /chide
IniRead, Radio17, Settings.ini, Settings, DefaultConf
IniRead, Radio16, Settings.ini, Settings, AikenConf
IniRead, key1, Settings.ini, KeySetup, KEY1
IniRead, key2, Settings.ini, KeySetup, KEY2
IniRead, key3, Settings.ini, KeySetup, KEY3
IniRead, key4, Settings.ini, KeySetup, KEY4
IniRead, key5, Settings.ini, KeySetup, KEY5
IniRead, key6, Settings.ini, KeySetup, KEY6
IniRead, key7, Settings.ini, KeySetup, KEY7
IniRead, key8, Settings.ini, KeySetup, KEY8
IniRead, key9, Settings.ini, KeySetup, KEY9
IniRead, key10, Settings.ini, KeySetup, KEY10
IniRead, key11, Settings.ini, KeySetup, KEY11
IniRead, key12, Settings.ini, KeySetup, KEY12
IniRead, key13, Settings.ini, KeySetup, KEY13
IniRead, key14, Settings.ini, KeySetup, KEY14
IniRead, key15, Settings.ini, KeySetup, KEY15
IniRead, key16, Settings.ini, KeySetup, KEY16
IniRead, qdis, Settings.ini, Discord, qdis
IniRead, qtag, Settings.ini, Discord, qtag
IniRead, gadis, Settings.ini, Discord, gadis
IniRead, gatag, Settings.ini, Discord, gatag
if qdis=ERROR
{
IniWrite, FILANT, Settings.ini, Discord, qdis
IniWrite, 0900, Settings.ini, Discord, qtag
IniWrite, Gleb, Settings.ini, Discord, gadis
IniWrite, 7777, Settings.ini, Discord, gatag
reload
}
IniRead, qX, Settings.ini, Coords, qX
IniRead, qY, Settings.ini, Coords, qY
if qX=ERROR
{
IniWrite, 0, Settings.ini, Coords, qX
IniWrite, 0, Settings.ini, Coords, qY
reload
}
Hotkey, %KEY1%, Off, UseErrorLevel
Hotkey, %KEY1%, Reports, On, UseErrorLevel
Hotkey, %KEY2%, Off, UseErrorLevel
Hotkey, %KEY2%, delv, On, UseErrorLevel
Hotkey, %KEY3%, Off, UseErrorLevel
Hotkey, %KEY3%, gm, On, UseErrorLevel
Hotkey, %KEY4%, Off, UseErrorLevel
Hotkey, %KEY4%, tp, On, UseErrorLevel
Hotkey, %KEY5%, Off, UseErrorLevel
Hotkey, %KEY5%, esp, On, UseErrorLevel
Hotkey, %KEY6%, Off, UseErrorLevel
Hotkey, %KEY6%, inv, On, UseErrorLevel
Hotkey, %KEY7%, Off, UseErrorLevel
Hotkey, %KEY7%, dl, On, UseErrorLevel
Hotkey, %KEY8%, Off, UseErrorLevel
Hotkey, %KEY8%, mtp, On, UseErrorLevel
Hotkey, %KEY9%, Off, UseErrorLevel
Hotkey, %KEY9%, gcar, On, UseErrorLevel
Hotkey, %KEY10%, Off, UseErrorLevel
Hotkey, %KEY10%, rep, On, UseErrorLevel
Hotkey, %KEY11%, vhod, On, UseErrorLevel
Hotkey, %KEY12%, resc, On, UseErrorLevel
Hotkey, %KEY13%, PunishmentHandler, On, UseErrorLevel
Hotkey, %KEY14%, memo, On, UseErrorLevel
Hotkey, %KEY15%, gh, On, UseErrorLevel
Hotkey, %KEY16%, chide, On, UseErrorLevel
Gui, 2: -MaximizeBox
Gui, 2: Show, w870 h540, Gen4ik Binder v1.75
Gui, 2: Color, 1e2124
Gui, 2: Font, c0xFFFFFF
Gui, 2: Add, Picture, x600 y300 w260 h35, %A_ScriptDir%\img\logo2.png
Gui, 2: Add, Picture, x630 y340 w200 h200, %A_ScriptDir%\img\logo1.png


Gui, 2: Add, Button, x10 y50 w113 h33 gПомощь , Помощь
Gui, 2: Add, Button, x10 y90 w113 h33 gТелепорты, Телепорты
Gui, 2: Add, Button, x10 y130 w113 h33 gКоманды, Команды
Gui, 2: Add, Button, x10 y170 w113 h33 gОтветы, Ответы
Gui, 2: Add, Button, x10 y210 w113 h33 gОтветыдва, ххууху
Gui, 2: Add, Button, x10 y250 w113 h33 gОтветытри, Ответы 3
Gui, 2: Add, Button, x10 y290 w113 h33 gНаказания, Наказания
Gui, 2: Add, Button, x10 y330 w113 h33 gСкилы, Скилы
Gui, 2: Add, Button, x10 y370 w113 h33 gSaveData, Сохранить

Gui, 2: Add, Button, x10 y430 w113 h50 gcoord, Изменить расположение счетчика
Gui, 2: Add, Button, x718 y50 w138 h37 gНов , Changelog
Gui, 2: Add, Button, x718 y195 w138 h37 gdiscord , Ввод Вашего дискорда
Gui, 2: Add, Button, x718 y245 w138 h37 gdiscordga , Дискорд ГА
Gui, 2: Add, Button, x718 y100 w138 h37 gupdate, Обновить скрипт
Gui, 2: Add, Text, x184 y14 w120 h23 +0x200 +Border +0x1, Горячие клавиши
Gui, 2: Add, Hotkey, x156 y50 w48 h21 vHot1, %KEY1%
Gui, 2: Add, Hotkey, x156 y80 w48 h21 vHot2, %KEY2%
Gui, 2: Add, Hotkey, x156 y110 w48 h21 vHot3, %KEY3%
Gui, 2: Add, Hotkey, x156 y140 w48 h21 vHot4, %KEY4%
Gui, 2: Add, Hotkey, x156 y170 w48 h21 vHot5, %KEY5%
Gui, 2: Add, Hotkey, x156 y200 w48 h21 vHot6, %KEY6%
Gui, 2: Add, Hotkey, x156 y230 w48 h21 vHot7, %KEY7%
Gui, 2: Add, Hotkey, x156 y260 w48 h21 vHot8, %KEY8%
Gui, 2: Add, Hotkey, x156 y290 w48 h21 vHot9, %KEY9%
Gui, 2: Add, Hotkey, x156 y320 w48 h21 vHot10, %KEY10%
Gui, 2: Add, Hotkey, x156 y350 w48 h21 vHot11, %KEY11%
Gui, 2: Add, Hotkey, x156 y380 w48 h21 vHot12, %KEY12%
Gui, 2: Add, Hotkey, x156 y440 w48 h21 vHot14, %KEY14%
Gui, 2: Add, Hotkey, x156 y410 w48 h21 vHot15, %KEY15%
Gui, 2: Add, Hotkey, x156 y500 w48 h21 vHot16, %KEY16%
Gui, 2: Add, Hotkey, x156 y470 w48 h21 vHot13, %KEY13%
Gui, 2: Add, Text, x213 y53 w120 h14 +0x200, Открыть репорты
Gui, 2: Add, Text, x213 y83 w120 h14 +0x200, Удалить транспорт
Gui, 2: Add, Text, x213 y113 w120 h14 +0x200, GM
Gui, 2: Add, Text, x213 y143 w120 h14 +0x200, ТП к игроку
Gui, 2: Add, Text, x213 y173 w120 h14 +0x200, ESP
Gui, 2: Add, Text, x213 y203 w120 h14 +0x200, Ваниш
Gui, 2: Add, Text, x213 y233 w120 h14 +0x200, Вкл/Выкл /dl
Gui, 2: Add, Text, x213 y263 w120 h14 +0x200, ТП на метку
Gui, 2: Add, Text, x213 y293 w120 h14 +0x200, ТП авто к себе
Gui, 2: Add, Text, x213 y323 w120 h14 +0x200, Добавить +1 репорт
Gui, 2: Add, Text, x213 y353 w120 h14 +0x200, Команды при входе
Gui, 2: Add, Text, x213 y383 w120 h14 +0x200, Воскресить игрока
Gui, 2: Add, Text, x213 y443 w120 h14 +0x200, Памятка
Gui, 2: Add, Text, x213 y413 w120 h14 +0x200, Телепорт игрока к себе
Gui, 2: Add, Text, x213 y473 w120 h14 +0x200, Выдача наказаний
Gui, 2: Add, Text, x213 y503 w120 h14 +0x200, Вкл/Выкл /chide
Gui, 2: Add, Text, x451 y14 w120 h23 +0x200 +Border +0x1, Настройки
Gui, 2: Add, Text, x718 y14 w138 h23 +0x200 +Border +0x1, Полезные функции
Gui, 2: Add, Text, x718 y160 w138 h23 +0x200 +Border +0x1, Персонализация
Gui, 2: Add, Radio, x412 y82 w120 h23 Group vRadio1 Checked%Radio1%, 1920x1080
Gui, 2: Add, Radio, x412 y112 w120 h23 vRadio7 Checked%Radio7%, 1600x900
Gui, 2: Add, Radio, x412 y142 w120 h23 vRadio2 Checked%Radio2%, 2554x1411
Gui, 2: Add, Radio, x412 y172 w120 h23 vRadio5 Checked%Radio5%, 1440x900
Gui, 2: Add, Radio, x542 y82 w120 h23 vRadio6 Checked%Radio6%, 1680x1050
Gui, 2: Add, Radio, x542 y112 w120 h23 vRadio13 Checked%Radio13%, 1366x768
Gui, 2: Add, Radio, x542 y142 w120 h23 vRadio14 Checked%Radio14%, 1280x960
Gui, 2: Add, Radio, x542 y172 w120 h23 vRadio15 Checked%Radio15%, 2560х1440
Gui, 2: Add, Radio, x412 y232 w120 h23 Group vRadio3 Checked%Radio3%, Мужской пол
Gui, 2: Add, Radio, x542 y232 w120 h23 vRadio4 Checked%Radio4%, Женский пол
Gui, 2: Add, CheckBox, x452 y292 w120 h23 vRadio8 Checked%Radio8%, /killlog
Gui, 2: Add, CheckBox, x452 y320 w120 h23 vRadio9 Checked%Radio9%, /showcheats
Gui, 2: Add, CheckBox, x452 y348 w120 h23 vRadio10 Checked%Radio10%, /dl
Gui, 2: Add, CheckBox, x452 y376 w120 h23 vRadio11 Checked%Radio11%, /esp
Gui, 2: Add, CheckBox, x452 y432 w120 h23 vRadio12 Checked%Radio12%, /templeader
Gui, 2: Add, CheckBox, x452 y403 w120 h23 vRadio18 Checked%Radio18%, /chide
Gui, 2: Add, Text, x451 y52 w120 h23 +0x200 +Border +0x1, Разрешение экрана
Gui, 2: Add, Text, x451 y202 w120 h23 +0x200 +Border +0x1, Ваш пол
Gui, 2: Add, Text, x451 y262 w120 h23 +0x200 +Border +0x1, Команды при входе
WinSet_Click_Through(I, T="254") {
IfWinExist, % "ahk_id " I
{
If (T == "Off")
{
WinSet, AlwaysOnTop, Off, % "ahk_id " I
WinSet, Transparent, Off, % "ahk_id " I
WinSet, ExStyle, -0x20, % "ahk_id " I
}
Else
{
WinSet, AlwaysOnTop, On, % "ahk_id " I
If(T < 0 || T > 254 || T == "On")
T := 254
WinSet, Transparent, % T, % "ahk_id " I
WinSet, ExStyle, +0x20, % "ahk_id " I
}
}
Else
Return 0
}
Gui, +LastFound +ToolWindow
ID := WinExist()
Gui, Show, NoActivate, Hide x0 y0 w0 h0, Overlay
WinSet_Click_Through(ID, "On")
GuiControl,, Un-Clickable
CustomColor := "#00FF00"
Gui, +LastFound +AlwaysOnTop -Caption +ToolWindow
Gui, Color, cRed
Gui, Font,, Intro
Gui, Font, s10
Gui, Font, q1
Gui, Font, w400
Gui, Add, Text, vMyText cWhite, XXX, YYYY
Gui, Add, Text, vMyTotalR cWhite, XXXXXX, YYYYYY
Gui, Color, 1c2126
WinSet, TransColor, AAAAAA 155
GoSub, UpdateCounter1
Gui, Show, x%qX% y%qY% w100 h63, Overlay
Файлы:
IfExist, %A_ScriptDir%\Updater.exe
{
Filedelete, %A_ScriptDir%\Updater.exe
}
IfNotExist, %A_ScriptDir%\Punishment.txt 
{
URLDownloadToFile, https://filant.ru/binder/bindedownloadr.php,%A_ScriptDir%\Punishment.txt
}
IfnotExist, %A_ScriptDir%\img
{
FileCreateDir, %A_ScriptDir%\img
}
Filedelete, %A_ScriptDir%\img\logo1.png
URLDownloadToFile, https://filant.ru/binder/logo1.png,%A_ScriptDir%\img\logo1.png
Filedelete, %A_ScriptDir%\img\logo2.png
URLDownloadToFile, https://filant.ru/binder/logo2.png,%A_ScriptDir%\img\logo2.png
return
update:
MsgBox Обновление биндера.
Filedelete, %A_ScriptDir%\Helper.ahk
IfnotExist, %A_ScriptDir%\Helper.ahk
{
URLDownloadToFile, https://filant.ru/binder/binderloader.php,%A_ScriptDir%\Helper.ahk
Run,%A_ScriptDir%\Helper.ahk
return
}
return
update1:
return
SaveData:
Gui, Submit, NoHide
IniWrite, %Radio1%, Settings.ini, Settings, 1920x1080
IniWrite, %Radio7%, Settings.ini, Settings, 1600x900
IniWrite, %Radio5%, Settings.ini, Settings, 1440x900
IniWrite, %Radio6%, Settings.ini, Settings, 1680x1050
IniWrite, %Radio2%, Settings.ini, Settings, 2554x1411
IniWrite, %Radio13%, Settings.ini, Settings, 1366x768
IniWrite, %Radio14%, Settings.ini, Settings, 1280x960
IniWrite, %Radio15%, Settings.ini, Settings, 2560x1440
IniWrite, %Radio3%, Settings.ini, Settings, Male
IniWrite, %Radio4%, Settings.ini, Settings, Female
IniWrite, %Radio8%, Settings.ini, Settings, /killlog
IniWrite, %Radio9%, Settings.ini, Settings, /showcheats
IniWrite, %Radio10%, Settings.ini, Settings, /dl
IniWrite, %Radio11%, Settings.ini, Settings, /esp
IniWrite, %Radio12%, Settings.ini, Settings, /templeader
IniWrite, %Radio18%, Settings.ini, Settings, /chide
IniWrite, %Radio17%, Settings.ini, Settings, DefaultConf
IniWrite, %Radio16%, Settings.ini, Settings, AikenConf
IniWrite, %Hot1%, Settings.ini, KeySetup, KEY1
IniWrite, %Hot2%, Settings.ini, KeySetup, KEY2
IniWrite, %Hot3%, Settings.ini, KeySetup, KEY3
IniWrite, %Hot4%, Settings.ini, KeySetup, KEY4
IniWrite, %Hot5%, Settings.ini, KeySetup, KEY5
IniWrite, %Hot6%, Settings.ini, KeySetup, KEY6
IniWrite, %Hot7%, Settings.ini, KeySetup, KEY7
IniWrite, %Hot8%, Settings.ini, KeySetup, KEY8
IniWrite, %Hot9%, Settings.ini, KeySetup, KEY9
IniWrite, %Hot10%, Settings.ini, KeySetup, KEY10
IniWrite, %Hot11%, Settings.ini, KeySetup, KEY11
IniWrite, %Hot12%, Settings.ini, KeySetup, KEY12
IniWrite, %Hot13%, Settings.ini, KeySetup, KEY13
IniWrite, %Hot14%, Settings.ini, KeySetup, KEY14
IniWrite, %Hot15%, Settings.ini, KeySetup, KEY15
IniWrite, %Hot16%, Settings.ini, KeySetup, KEY16
IniWrite, %qX%, Settings.ini, Coords, qX
IniWrite, %qY%, Settings.ini, Coords, qY
Reload
return
SaveData1:
Gui, 3: Submit, NoHide
IniWrite, %qX%, Settings.ini, Coords, qX
IniWrite, %qY%, Settings.ini, Coords, qY
Reload
return
SaveData2:
Gui, 4: Submit, NoHide
IniWrite, %qdis%, Settings.ini, Discord, qdis
IniWrite, %qtag%, Settings.ini, Discord, qtag
Reload
return
SaveData3:
Gui, 5: Submit, NoHide
IniWrite, %gadis%, Settings.ini, Discord, gadis
IniWrite, %gatag%, Settings.ini, Discord, gatag
Reload
return

UpdateCounter1:
IniWrite, %DayANS%, Settings.ini, ANS, DayANS
IniRead, DayANS, Settings.ini, ANS, DayANS
IniWrite, %WeekANS%, Settings.ini, ANS, WeekANS
IniRead, WeekANS, Settings.ini, ANS, WeekANS
GuiControl,, MyText, День: %DayANS%
GuiControl,, MyTotalR, Неделя: %WeekANS%
return
UpdateCounter:
DayANS+=1
WeekANS+=1
IniWrite, %DayANS%, Settings.ini, ANS, DayANS
IniRead, DayANS, Settings.ini, ANS, DayANS
IniWrite, %WeekANS%, Settings.ini, ANS, WeekANS
IniRead, WeekANS, Settings.ini, ANS, WeekANS
GuiControl,, MyText, День: %DayANS%
GuiControl,, MyTotalR, Неделя: %WeekANS%
return
Reports:
SendInput, {F8}
return
memo:
State2:=!State2
If state2
{
CustomColor2 = 	EEAA99
Gui 3: +LastFound +AlwaysOnTop -Caption +ToolWindow
Gui 3: Color, black
Gui 3: Font, s9
Gui 3: Font, w3000
Gui 3: Font, cFFFFFF
Gui 3: Add, Text,, =================================================================================================================================================================================================================================================================================================================================================================================
GUI 3: ADD, TEXT, cGreen,!                    ЧАСТЫЕ НАРУШЕНИЯ		                                                                                                			ДРУГИЕ НАРУШЕНИЯ		                                                                                                          		КРИМИНАЛЬНЫЕ НАРУШЕНИЯ
Gui 3: Add, Text, cYellow, DM                                   	            Demorgan 240 минут / WARN / Ban 3 - 30 дней.		            Анимация секс характера.					WARN.						Грабителей меньше 4 чел. и 2 ТС.				Demorgan 60 - 120 минут
Gui 3: Add, Text,, DB	                                    	Demorgan 120 - 240 минут / WARN / Ban 3 - 30 дней.		Аморальные/ceксуальные дейст.				Ban 3 - 7 дней.					Меньше 4-х похитителей					WARN.
Gui 3: Add, Text, cYellow, Уход от РП                                	WARN / Ban 2-5 дней.						Ограбление/Похищение в ЗЗ					HardBan 7 дней / WARN.			Убийство жертвы без IC причины				Demorgan 120 минут.
Gui 3: Add, Text,, SK	                                    	Ban 2 дня / Hardban 2 - 7 дней.					Отыгровки в свою пользу					Demorgan 60-120 минут.				Союз 2-х фракций на ограблении				Demorgan 240 минут / Устный лидеру.
Gui 3: Add, Text, cYellow, PG	                                            	Demorgan 60 - 240 минут / WARN / Ban 2-5 дней.		Обман администрации						Ban-Hardban 10 - 30 дней.			Агрес. дейст. на враж. респе					Demorgan 240 минут.
Gui 3: Add, Text,, NRD					Demorgan 30 - 240 минут / Ban 3-7 дней.			Программа изм. голоса					Mute 10 - 60 минут.				Блок. входы/выходы из бизнеса ТС.				Demorgan 120 минут.
Gui 3: Add, Text, cYellow, NRP поведение	                                    Demorgan 60 - 240 минут / WARN / Ban 3 - 15 дней.		Трап / нрп ник							Demorgan 720 минут (до смены)			Кол-во участников ограбления более 35 чел.			Demorgan 60 минут всем участникам.
Gui 3: Add, Text,, RK	                                             	Demorgan 240 минут / WARN.                                 		Лутерство в бою						Demorgan 120 минут / WARN		           ТС не в фрак. цвет						Demorgan 120 минут.
Gui 3: Add, Text, cYellow, Музыка в ЗЗ	                                   	Mute 30-60 минут.						Помеха работе администрации					Kick / Demorgan 30 - 240 минут.			Срез. бронижелета без отыгровок				Demorgan 30 - 180 минут.п
Gui 3: Add, Text,, Уход в ЗЗ	                                   	Demorgan 240 минут.						Спам/флуд в чат						Mute 10 - 60 минут.				Уход от погони на респ.					Demorgan 240 минут.
Gui 3: Add, Text, cYellow, Оск. нации				Ban 3-5 дней / Ban 15 дней / Ban 30 дней.		  	Реклама посторонних проектов					HardBan 15 - 30 дней / PermBan.		Переговорщик в заложниках					WARN.
Gui 3: Add, Text,, Оск. родных                        		Mute 240 минут / Ban 5-30 дней.				Оск. администрации						Ban 7 - 30 дней / HardBan 3 - 30 дней.
Gui 3: Add, Text, cYellow, Громкие звуки в войс                          	Mute 10 - 120 минут.						Лут в  бою							Demorgan 120 / WARN.								ГОСУДАРСТВЕННЫЕ НАРУШЕНИЯ
Gui 3: Add, Text,, ООС оскобления             		Mute 60-120 минут / Demorgan 60 минут.			Читерство							PermBan.
Gui 3: Add, Text, cYellow, Свап оружия                	     		WARN / Ban 2 дня.					            Оскорбительные отыгровки					Demorgan 30-120 минут.				Спец техника в городе						Demorgan 120 минут.
Gui 3: Add, Text,, Угон спец техники	                        Demorgan 60 - 240 минут / Ban 2 - 10 дней.			Обман /do							Demorgan 120 минут.				Патруль на личке						Demorgan 120 минут.
Gui 3: Add, Text, cYellow, Байт гос. структур                         	Demorgan 240 минут.				 	 	Оскорбления игроков в репорт					Demorgan 60 - 240 минут.			Патруль гетто в соло без кодов.				Demorgan 120 минут.
Gui 3: Add, Text,, Крайм без фракции          		Demorgan 60 - 180 мин.						Ограбление мёртвого						Ban 3 дня.			  		Связь с краймом						WARN.
Gui 3: Add, Text, cYellow, Запрещенные слова                              Mute 240 / Ban 3-30 дней / Permban.				Ограб. без отыгровок						Demorgan 60-180 минут.				Затягивание допроса (120 мин.)				Demorgan 120-240 минут всем.
Gui 3: Add, Text,, Багоюз	                                                WARN / Ban 3 - 30 дней / Hardban 3 - 30 дней / Permban.	Хилл/броня в бою						Demorgan 120 - 240 минут.			НРП ГОС(1.4 ПГО)				Demorgan 120 - 240 / WARN / Ban 15 - 30 дней.
Gui 3: Add, Text, cYellow, Крайм в ЗЗ	                         	Demorgan 30 - 240 минут / WARN / Ban 3 дня.			Стрельба с ТС по пешим					Demorgan 60 - 120 минут.
Gui 3: Add, Text,, Фракции	                                    1 - LSPD   2 - EMS   3 - SD   4 - SANG   5 - GOV   6 - WN   7 - FIB   8 - Ballas   9 - Vagos   10 - Fam   11 - Bloods   12 - Mara   13 - LCN   14 - RM   15 - YAK   16 - MEX   17 -  LOST   18 - AOD   19 - AM    20 - Grubie   21 - GrandClub   22 - Barins   23 - Manor   24 - Cont 			
Gui 3: Add, Text,,                =================================================================================================================================================================================================================================================================================================================================================================================
WinSet, TransColor, %CustomColor2% 200
Gui 3: Show, x0 y430 NoActivate, window.
}
Else
Gui 3: Destroy
Return
dl:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /dl{Enter}
return
tp:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /tp{space}
return
inv:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /inv{Enter}
return
coord:
Gui, 3: -MaximizeBox
Gui, 3: Show, w300 h75, Перемещение счетчика репортов
Gui, 3: Color, 838d96
Gui, 3: Font, c0x000000
Gui, 3: Add, Edit, x10 y10 w48 h21 vqX, %qX%
Gui, 3: Add, Edit, x10 y40 w48 h21 vqY, %qY%
Gui, 3: Add, Text, x40 y10 w120 h23 +0x200 +0x1, Координата X
Gui, 3: Add, Text, x40 y40 w120 h23 +0x200 +0x1, Координата Y
Gui, 3: Add, Button, x170 y20 w113 h33 gSaveData1, Применить
return
discord:
Gui, 4: -MaximizeBox
Gui, 4: Show, w285 h70, Ваш дискорд
Gui, 4: Color, 838d96
Gui, 4: Font, c0x000000
Gui, 4: Add, Edit, x10 y10 w110 h21 vqdis, %qdis%
Gui, 4: Add, Edit, x10 y40 w45 h21 vqtag, %qtag%
Gui, 4: Add, Text, x105 y10 w115 h23 +0x200 +0x1, Ваш дискорд
Gui, 4: Add, Text, x32 y40 w100 h23 +0x200 +0x1, Ваш тег
Gui, 4: Add, Button, x230 y14 w40 h40 gSaveData2, ✓
return
discordga:
Gui, 5: -MaximizeBox
Gui, 5: Show, w285 h70, Дискорд ГА
Gui, 5: Color, 838d96
Gui, 5: Font, c0x000000
Gui, 5: Add, Edit, x10 y10 w110 h21 vgadis, %gadis%
Gui, 5: Add, Edit, x10 y40 w45 h21 vgatag, %gatag%
Gui, 5: Add, Text, x105 y10 w115 h23 +0x200 +0x1, Дискорд ГА
Gui, 5: Add, Text, x32 y40 w100 h23 +0x200 +0x1, Тег ГА
Gui, 5: Add, Button, x230 y14 w40 h40 gSaveData3, ✓
return
esp:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /esp{Enter}
return
delv:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /delveh{Enter}
return
PunishmentHandler:
Process, Exist, GTA5.exe
if(Errorlevel)
{
WinActivate ahk_exe GTA5.exe
Loop, read, %A_WorkingDir%\Punishment.txt
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
ru := DllCall("LoadKeyboardLayout", "Str", "00000419", "Int", 1)
en := DllCall("LoadKeyboardLayout", "Str", "00000409", "Int", 1)
w := DllCall("GetForegroundWindow")
pid := DllCall("GetWindowThreadProcessId", "UInt", w, "Ptr", 0)
l := DllCall("GetKeyboardLayout", "UInt", pid)
if (l != ru)
{
PostMessage 0x50, 0, %ru%,, A
}
Sleep, 850
Send, {T}
Send, %A_LoopField%
Send, {Enter}
}
}
MsgBox, 64, Выдача наказаний, Наказания выданы.
}
else
{
MsgBox, 16, Выдача наказаний, Запустите игру!
}
return
gcar:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /getcar{Space}
return
gm:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /gm{Enter}
return
resc:
SendInput, {sc14}
Sleep 50
SendInput, /rescue{Space}
return
gh:
SendInput, {sc14}
Sleep 50
SendInput, /gh{Space}
return
chide:
SendInput, {sc14}
Sleep 50
SendInput, /chide{Enter}
return
gtar:
Process, Exist, GTA5.exe
return
dorab:
MsgBox, 64, Ошибка,Функция на доработке.
return
mtp:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /mtp{Enter}
return
vhod:
SendMessage, 0x50,, 0x4090409
SendInput, {T}
Sleep 300
SendInput, /gm{Enter}
Sleep 300
if (Radio11==1)
{
SendInput, {T}
Sleep 300
SendInput, /esp{Enter}
Sleep 300
}
if (Radio9==1)
{
SendInput, {T}
Sleep 300
SendInput, /showcheats{Enter}
Sleep 300
}
if (Radio8==1)
{
SendInput, {T}
Sleep 300
SendInput, /killlog{Enter}
Sleep 300
}
if (Radio10==1)
{
SendInput, {T}
Sleep 300
SendInput, /dl{Enter}
Sleep 300
}
if (Radio18==1)
{
SendInput, {T}
Sleep 300
SendInput, /chide{Enter}
Sleep 300
}
if (Radio12==1)
{
SendInput, {T}
Sleep 300
SendInput, /templeader{space}
}
return
rep:
counter++
GoSub, UpdateCounter
Clipboard :=
return


; СЧЁТЧИК РЕПОРТОВ
Enter::
labelgo:
SendInput, {Enter}
Sleep 250
if (Radio1==1) {
MouseGetPos, 1410, 187
PixelGetColor, color, 1410, 187, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio2==1) {
MouseGetPos, 1901, 247
PixelGetColor, color, 1901, 247, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio7==1) {
MouseGetPos, 1211, 152
PixelGetColor, color, 1211, 152, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio5==1) {
MouseGetPos, 961, 159
PixelGetColor, color, 961, 159, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio6==1) {
MouseGetPos, 812, 233
PixelGetColor, color, 812, 233, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio13==1) {
MouseGetPos, 878, 136
PixelGetColor, color, 878, 136, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio14==1) {
MouseGetPos, 888, 165
PixelGetColor, color, 888, 165, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio15==1) {
MouseGetPos, 1912, 250
PixelGetColor, color, 1912, 250, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
return

NumpadEnter::
labelgo2:
SendInput, {NumpadEnter}
Sleep 250
if (Radio1==1) {
MouseGetPos, 1410, 187
PixelGetColor, color, 1410, 187, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio2==1) {
MouseGetPos, 1901, 247
PixelGetColor, color, 1901, 247, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio7==1) {
MouseGetPos, 1211, 152
PixelGetColor, color, 1211, 152, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio5==1) {
MouseGetPos, 961, 159
PixelGetColor, color, 961, 159, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio6==1) {
MouseGetPos, 812, 233
PixelGetColor, color, 812, 233, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio13==1) {
MouseGetPos, 878, 136
PixelGetColor, color, 878, 136, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio14==1) {
MouseGetPos, 888, 165
PixelGetColor, color, 888, 165, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio15==1) {
MouseGetPos, 1912, 250
PixelGetColor, color, 1912, 250, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
return






; Команды
:?:.лспд::/ctp 429 -980 30
:?:.бол::/ctp 291.9088 -579.4822 49
:?:.шд::/ctp -435 6018 31
:?:.фз::/ctp -2336 3257 32
:?:.мэр::/ctp -534 -244 35
:?:.визл::/ctp -593 -929 25
:?:.фиб::/ctp 2527 -377 92

:?:.бал::/ctp 100 -1937 20
:?:.ваг::/ctp 967 -1817 31
:?:.фэм::/ctp -207 -1722 32
:?:.бладс::/ctp 496 -1330 29
:?:.мара::/ctp 1410 -1507 59

:?:.лкн::/ctp 1385 1154 114
:?:.рм::/ctp -1526 858 181
:?:.як::/ctp -1547 115 56
:?:.мекс::/ctp -1210 283 69
:?:.ам::/ctp -1887.79 2031.85 140.02

:?:.лост::/ctp 969.84 -128.40 73.92
:?:.аод::/ctp 2011.47 3055.73 47.06

:?:.лис::/ctp -3022 105 13
:?:.клаб::/ctp 1590 6449 25
:?:.бар::/ctp -720.86 -1293.07 4.56
:?:.манор::/ctp -58.20 343.73 111.80
:?:.конт::/ctp -1864 -359 58

:?:.хум::/ctp 3568 3665 33
:?:.мейз::/ctp -75 -818 326
:?:.каз::/ctp 1110.117 217.0512 -49.56448
:?:.аш::/ctp -620 -2264 7
:?:.гг::/ctp -257 -2023 31
:?:.бургер::/ctp -1171.31 -890.20 13.90
:?:.багама::/ctp
:?:.кайо::/ctp 4488.58 -4493.52 3.36
:?:.авиа::/ctp 3035.21 -4688.55 14.59

:?:.х::/hp 70{Left 3}

:?:.аи::/fb
:?:.гтьгеу::/unmute
:?:.пуезшт::/getpin
:?:.пшв::/gid
:?:.фвьшты::/admins
:?:.фштаусе::/ainfect
:?:.умутещт::/eventon
:?:.умутещаа::/eventoff
:?:.пц::/gw
:?:.мур::/veh
:?:.ашчсфк::/fixcar
:?:.уьздуфвук::/templeader
:?:/tl::/templeader
:?:.ед::/templeader
:?:.ылшсл::/skick
:?:.кузфшк::/repair
:?:.фгтшмшеу::/auninvite
:?:.учсфк::/excar
:?:.агуд::/fuel
:?:.згддекгтл::/pulltunk
:?:.акууя::/freez
:?:.езсфк::/tpcar
:?:.дфыевкшмук::/lastdriver
:?:.вудшеуь::/delitem
:?:/gc::/getcar
:?:.пс::/getcar
:?:.фв::/admins
:?:/ad::/admins
:?:.з::/players
:?:/p::/players
:?:.здфнукы::/players
:?:.рес::/rescue
:?:.ез::/tp
:?:.ызус::/spec
:?:.ызусщаа::/specoff
:?:.фыьы::/asms
:?:.ку::Здравствуйте, 
:?:.ф::/a
:?:/sp::/spec
:?:.ыз::/spec
:?:/so::/specoff {Enter}
:?:.ыщ::/specoff {Enter}
:?:/kill::/hp 0{left 2}
:?:.лшдд::/hp 0{left 2}
:?:.штсфк::/incar
:?:.пр::/gh
:?:.пиздец::/a <@&530697917699325952> и <@&588784568300077073> Уважаемая администрация, просим зайти вас на сервер, в данный момент нам очень нужна ваша помощь.
:?:.штм::/inv
:?:.шв::/id
:?:.рз::/hp
:?:.од::/ajail
:?:.фофшд::/ajail
:?:.лшсл::/kick
:?:.ылшсл::/skick
:?:.кузфшк::/repair
:?:.вд::/dl
:?:.уыз::/esp
:?:.пуесфк::/getcar
:?:.ифт::/ban
:?:.вудмур::/delveh
:?:.ьез::/mtp
:?:.мур::/veh
:?:.фмур::/aveh
:?:.рфквифт::/hardban
:?:.ьгеу::/mute
:?:.пшв::/gid
:?:.ср::/chide
:?:/ch::/chide
:?:.куысгу::/rescue
:?:.ыуевшь::/setdim
:?:/sd::/setdim
:?:.ыв::/setdim
:?:.сршву::/chide
:?:.афк::/a afk мин{left 4}
:?:.фгтсгаа::/auncuff
:?:.фсгаа::/acuff
:?:.акууяф::/freeza
:?:.ызфцтсфк::/spawncar
:?:/sc::/spawncar
:?:.ыс::/spawncar

:?:.краш::
SendMessage, 0x50,, 0x4090409
SendInput, Здравствуйте. Если у Вас есть доказательства краша - предоставьте его мне в личные сообщения дискорда. Я вас выпущу. Мой дискорд: %qdis%{#}%qtag%.
Return
:?:.краш::
SendMessage, 0x50,, 0x4090409
SendInput, Здравствуйте. Если у Вас есть доказательства краша - предоставьте его мне в личные сообщения дискорда. Я вас выпущу. Мой дискорд: %qdis%{#}%qtag%.
Return
:?:.дс::
SendMessage, 0x50,, 0x4090409
SendInput, Здравствуйте, предоставьте видеодоказательство мне в личные сообщения дискорда: %qdis%{#}%qtag%. Приятной игры на Majestic RP.
Return
:?:.га::
SendMessage, 0x50,, 0x4090409
SendInput, Обратитесь в личные сообщения дискорда к главному администратору: %gadis%{#}%gatag%.
Return
:?:.здр::
SendMessage, 0x50,, 0x4090409
SendInput, Здравствуйте,
Return

::.тп::
if (Radio1==1) {
MouseGetPos, 1410, 187
PixelGetColor, color, 1410, 187, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к Вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio2==1) {
MouseGetPos, 1901, 247
PixelGetColor, color, 1901, 247, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio7==1) {
MouseGetPos, 1211, 152
PixelGetColor, color, 1211, 152, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio5==1) {
MouseGetPos, 961, 159
PixelGetColor, color, 961, 159, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio6==1) {
MouseGetPos, 812, 233
PixelGetColor, color, 812, 233, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio13==1) {
MouseGetPos, 878, 136
PixelGetColor, color, 878, 136, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio14==1) {
MouseGetPos, 888, 165
PixelGetColor, color, 888, 165, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio15==1) {
MouseGetPos, 1912, 250
PixelGetColor, color, 1912, 250, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
Return


!q::
if (Radio1==1) {
MouseGetPos, 1410, 187
PixelGetColor, color, 1410, 187, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к Вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio2==1) {
MouseGetPos, 1901, 247
PixelGetColor, color, 1901, 247, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio7==1) {
MouseGetPos, 1211, 152
PixelGetColor, color, 1211, 152, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}

else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio5==1) {
MouseGetPos, 961, 159
PixelGetColor, color, 961, 159, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio6==1) {
MouseGetPos, 812, 233
PixelGetColor, color, 812, 233, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio13==1) {
MouseGetPos, 878, 136
PixelGetColor, color, 878, 136, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio14==1) {
MouseGetPos, 888, 165
PixelGetColor, color, 888, 165, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio15==1) {
MouseGetPos, 1912, 250
PixelGetColor, color, 1912, 250, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
Return

:?:.дис::
SendMessage, 0x50,, 0x4090409
SendInput, Здравствуйте, обратитесь ко мне в личные сообщения дискорда: %qdis%{#}%qtag%.
Return

!a::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Здравствуйте, иду.
Return

!d::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Сейчас помогу, ожидайте.
Return

!s::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приятной игры на Majestic RP.
Return

; Быстрый репорт 
!e::
if (Radio1==1) { ; 1920x1080
Sleep 50
SendInput, {F8}
Sleep 250
MouseMove, 625, 225
Sleep 50
MouseClick, left, 605, 225
Sleep 200
MouseClick, left, 605, 225
Sleep 200
MouseClick, left, 1030, 410
Sleep 50
}
else if (Radio5==1){ ; 1440x900
Sleep 50
SendInput, {F8}
Sleep 250
MouseMove, 625, 225
Sleep 50
MouseClick, left, 440, 190
Sleep 200
MouseClick, left, 440, 190
Sleep 200
MouseClick, left, 807 , 342
Sleep 50
}
else if (Radio15==1){ ; 1366х768
Sleep 50
SendInput, {F8}
Sleep 250
MouseMove, 625, 225
Sleep 50
MouseClick, left, 449, 187
Sleep 200
MouseClick, left, 449, 187 
Sleep 200
MouseClick, left, 729, 288
Sleep 50
}
else if (Radio15==1){ ; 2560х1440
Sleep 50
SendInput, {F8}
Sleep 250
MouseMove, 625, 225
Sleep 50
MouseClick, left, 831, 369
Sleep 200
MouseClick, left, 831, 369
Sleep 200
MouseClick, left, 1462, 616
Sleep 50
}
else { ; Пред на моник
    MsgBox, 16,Ошибка, К сожалению, твой монитор не подходит под данную функцию, следи за Changelog.
}
Return

; Ответы
:?:.пут::Приветствую, всю информацию (команды/о фракциях, работах и так далее) можно узнать на форуме majestic-rp.ru - раздел "Путеводитель для новичков", а также в F2 - Помощь.
:?:.увал::Здравствуйте. К сожалению, ничем не можем помочь. Дождитесь своего лидера/заместителей или свяжитесь с куратором своей фракции в личные сообщения Discord.
:?:.майки::Здравствуйте. Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки".
:?:.слух::Здравствуйте, функция "Я не слышу" предназначена для людей с плохим слухом или его отсутствием. Злоупотребление этой функцией карается баном Вашего персонажа. Отключить ее можно в меню F2 - Настройки. Спасибо за понимание.
:?:.баг::Знаем о данной проблеме, она уже передана разработчикам.
:?:.чат::Здравствуйте. На сервере есть следующие команды для чата: /pagesize - увеличить / уменьшить размер чата; /fontsize - увеличить / уменьшить размер шрифта; /chatalpha - прозрачность чата, /timestamp - время около каждого сообщения.
:?:.рел::Попробуйте перезайти через F1 > Direct Connect > Connect или полностью в игру (F1 - Quit Game).
:?:.рп::Извините, но это РП процесс, мы не вправе вмешиваться в него.
:?:.урп::Приветствую, данную информацию вы можете получить при взаимодействии с другими игроками/самостоятельным поиском непосредственно во время игрового процесса, либо другим доступным IC путем. Приятной игры и самого лучшего настроения на Majestic RP.
:?:.войс::Чтобы перезагрузить войс, попробуйте нажать F7 или /v_reload в чат. Если ничего не помогает - перезайдите в игру.
:?:.тех::Здравствуйте, напишите в технический раздел на форуме.
:?:.техдс::Здравствуйте, напишите в технический раздел официального дискорд сервера "Помощь по игре" - "чат-поддержки".
:?:.функ::Данный функционал временно недоступен, приносим свои извинения.
:?:.фун::Данный функционал не присутсвует у нас на сервере.
:?:.изв::Приносим свои извинения за предоставленные неудобства.
:?:.рыба::Здравствуйте, Вам нужно нажать F3 > Разное > Продажа рыбы.
:?:.ехп::Каждый час (у каждого игрока своё время) Вам дается EХP. Чтобы узнать, сколько Вам осталось до следующего PayDay, нажмите клавишу F2-Статистика.
:?:.авто::Чтобы эвакуировать Ваше авто воспользуйтесь маркером Сервиса (Гаечный ключ на карте). Приятной игры.
:?:.зп::Чтобы начислялся PayDay Вам нужно иметь свою банковскую карту и быть уволеным со всех работ. Оформить её можно в любом банке.
:?:.ганлиц::Получить лицензию на оружие можно в LSPD или LSCSD. Приятной игры.
:?:.канистра::Чтобы использовать канистру, возьмите её в руки, нажмите G на авто и заправить. Приятной игры.
:?:.емс::К сожалению, администрация не поднимает и не лечит игроков, воспользуйтесь услугами ЕМС.
:?:.подним::Приветствую. К сожалению, не видя всей ситуации мы не в праве лечить,поднимать или добивать игроков. Дождитесь сотрудников EMS либо же окончания таймера смерти. Приносим свои извинения за возможные неудобства. 
:?:.жб::Здравствуйте, администрация не может выдавать наказания и выносить какие-либо вердикты не видя всей ситуации. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание.
:?:.анак::Приветствую. Обратитесь, пожалуйста, в дискорд к администратору, который выдал вам наказание.
:?:.адс::Данный администратор сейчас отсутствует или занят, напишите ему в личные сообщения в дискорде.
:?:.погода::К сожалению, администрация не контролирует данный процесс. Погода меняется автоматически.
:?:.неп::Опишите Вашу проблему/вопрос подробнее в /report для максимально точного ответа, пожалуйста.
:?:.донат::Обратитесь по почте - help@majestic-rp.ru.
:?:.хп::Перезайдите в игру, либо купите таблетку у сотрудников EMS.
:?:.ремонт::Приветствую, для начала, Вам нужно купить запчасть для машины в любом магазине 24/7, после чего открыть капот , нажать G > Починить замок/аккумулятор/залить масло. Приятной игры.
:?:.ферм::Приветствую, на ферме для посадки каждого из растений нужны следующие навыки: Пшеница - 225 опыта. Картофель - 950 опыта. Капуста - 2000 опыта. Кукуруза - 3000 опыта. Тыква - 6200 опыта. Бананы - 10500 опыта.
:?:.гос::Вы можете сдать авто на свалку. После сдачи вы получите 75% от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый, красный круг.
:?:.аним::Здравствуйте, остановите анимацию. F2 > Анимации > Остановить анимацию.
:?:.рыбка::1ур.(0exp) - зоны: 1, 2, 3, 4, 5 -  Форель, 0,26$ за грамм; 2ур.(300exp) - зоны: 6, 7, 8 -  Камбала, 0,09$ за грамм; 3ур.(700exp) - зона 9 -  Тунец, 0,03$ за грамм; 4ур.(1500exp) - зона 10 -  Красный солдат, 0,43$ за грамм; 5ур.(3000exp) - зона 11 -  Карась, 0,14$ за грамм.; 6ур.(5200exp) - зона 12 -  Оранжевый карп, 0,05$ за грамм; 7ур.(9200exp) - зона 13 -  Аквамарин, 0,18$ за грамм; 8ур.(18000exp) - зона 14 -  Золотая рыбка, 0,71$ за грамм. Приятной игры на Majestic RP.
:?:.ид::Здравствуйте, укажите, пожалуйста, ID нарушителя.
:?:.сто::Степень износа определенных деталей автомобиля можно узнать на автомастерской (иконка гаечного ключа с отверткой на карте).
:?:.жба::Вы можете написать жалобу на форум, если не согласны с решением администратора.
:?:.дон::Задонатить можно на нашем официальном сайте - majestic-rp.ru/donate
:?:.инкас::Чтобы совместно работать Вам необходимо быть устроеным на работу (всем), загрузиться, а затем через G пригласить на работу.
:?:.грибы::Здравствуйте, чтобы собирать грибы вам надо приехать на точку "Грибы" 1/6 и взять в руки нож.
:?:.гриб::Продать грибы можно на рынке.
:?:.рын::Рынок находится в Лос-Сантосе межу аренды автобусов и LSPD.
:?:.оружрын::Приветствую. Боту на рынке можно сдать оружие только со 100% износом.
:?:.новость::Здравствуйте, позвоните или придите лично в Weazel News. Приятной игры.
:?:.п::Приятной игры на Majestic RP.
:?:.нов::Следите за новостями сервера в официальном дискорде проекта. Приятной игры.
:?:.ник::Сменить ник Вы можете нажав - F2 > Донат > Настройки персонажа.
:?:.банк::На данный момент все банковские карты между собой равны и ничем не отличаются. Банковская система находится в разработке.
:?:.кавто::Чтобы сделать дубликат ключей от авто необходимо купить заготовку в магазине 24/7, затем нажать G на авто и сделать дубликат.
:?:.клад::Чтобы сделать дубликат от кладовки, необходимо купить заготовку в магазине 24/7, затем через G передать дубликат нужному человеку.
:?:.тел::Приветствую, попробуйте купить телефон еще раз в магазине 24/7, деньги с вас не спишутся.
:?:.подсел::Приветствую, чтобы подселить игрока к себе в дом или же квартиру, стоя около дома, наведитесь на игрока и нажмите G, далее нажмите Подселить.
:?:.краш2::Здравствуйте. Если у Вас есть доказательства краша - предоставьте его любому администратору в личные сообщения дискорда. Вас выпустят.
:?:.замок::Вам необходимо купить "Дверной замок" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Починить дверной замок.
:?:.акум::Вам необходимо купить "Аккумулятор" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Заменить аккумулятор.
:?:.масло::Вам необходимо купить "Моторное масло" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Заменить масло.
:?:.модел::Пункт "Прогрузка моделей" отвечает за быстроту прогрузки текстур при приближении к ним.
:?:.бизограб::Здравствуйте, чтобы ограбить бизнес, вам нужно: одеть маску, приобрести оружие и, придя в магазин в составе от 2 до 35 человек, навестись на NPC (продавца) огнестрелом (только один человек должен грабить). Приятной игры на Majestic RP.
:?:.спавн::Здравствуйте, cпавн новичков находится в Палето-Бей, Чумашах, Аэропорту и на Автовокзале. Приятной игры на Majestic RP.
:?:.кредит::Любые финансовые договоры (займы, кредиты и т.д) не относятся к ООС сделкам. Все подобные сделки игроки совершают на свой страх и риск. Администрация не несет ответственности и не является гарантом сделки.
:?:.рем::Приветствую, чтобы починить своё авто купите рем.комплект в любом магазине 24/7 или на АЗС. Через меню G почините Ваш автомобиль.
:?:.сделка::Приветствую, администрация не следит за сделками игроков, запишите видео на случай обмана, чтобы оставить жалобу на игрока на форуме. Приятной игры на MajesticRP.
:?:.имя::Ваше Имя Фамилия не подходит по правилам нашего сервера. Вам нужно сменить ник и написать в репорт повторно, если Ваш ник будет соблюдать правила сервера, то Вас выпустят.
:?:.вынос::Выносливость - навык выносливости повышается от подвижного образа жизни. Чем больше ты бегаешь, тем быстрее повышается навык. Соответственно повышение навыка влияет на длительность беспрерывного бега.
:?:.сила::Сила - навык силы повышается от физических нагрузок. Чем больше ты занимаешься в качалке (иконка бегущего человека на карте), тем быстрее повышается навык. От прокачки увеличивается сопротивление к урону от падения.
:?:.дых::Дыхание - навык дыхания повышается от длительного нахождения под водой. Чем больше ты плаваешь, тем быстрее повышается навык. Соответственно повышение навыка влияет на длительность беспрерывного плавания под водой.
:?:.вожден::Вождение - навык вождения повышается от времени, проведенного за рулем автомобиля. Чем больше ты водишь транспорт, тем быстрее повышается навык. От прокачки увеличивается управляемость транспортным средоством.
:?:.полет::Полет - навык пилотирования повышается от времени, проведенного за воздушным транспортом. Чем больше ты летаешь на самолете или вертолете, тем быстрее повышается навык. Также навык можно повысив пройдя курсы в летной школе. Пройти их можно 1 раз в 24 часа, увелчение навыка от 1 занятия - 10, стоимость одного занятия - 2 000$. От прокачки навыка увеличивается стабильность полета и управляемость воздушным транспортом.
:?:.скрытн::Скрытность - навык скрытности повышается от количества успешных уходов от погони (понижений уровня розыска). Чем чаще ты скрываешься от полиции, тем быстрее повышается навык. От прокачки уменьшается время, которое ты будешь находиться в розыске (быстрее пропадают звезды).
:?:.стрельба::Стрельба - навык стрельбы повышается от времени, проведенного в перестрелках, либо тренировках. Чем лучше ты стреляешь и попадаешь, тем быстрее повышается навык. Рекомендуем тренироваться в специально отведенных для того местах, тире в оружейном магазине. От прокачки навыка увеличивается скорость перезарядки и перекатов, кучность стрельбы.
:?:.актуал:: Приветствую. Приносим извинения за столь долгое ожидание. Пожалуйста, если проблема еще актуальна, продублируйте её в /report. Спасибо за понимание.
:?:.лечу::Приветствую. Уже лечу к Вам на помощь.
:?:.пом::Приветствую. Сейчас помогу Вам, ожидайте.
:?:.багзз::Приветствую. Чтобы восстановить прежнюю скорость, заедьте в зеленую зону и выедьте с нее.
:?:.слетдом::Приветствую. Свободные дома обозначаются карте зеленым цветом. Они слетают каждый час, начиная с 00:00. Чтобы его купить, Вам потребуется иметь полную гос. стоимость наличными.
:?:.госдом::Приветствую. Чтобы продать дом в гос. стоимость, нужно подойти к двери и нажать Е. Вы получите 75% от его гос. цены. Если Вы невовремя оплатите налоги или забудете это сделать, дом слетит автоматически.
:?:.майки::Здравствуйте. Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки".Приятной игры и самого лучшего настроения на Majestic RP.
:?:.рыблиц::Приветствую, получить лицензию на рыбалку вы можете в Мэрии. Приятной игры и самого лучшего настроения на Majestic RP.
:?:.погода::Приветствую, к сожалению администрация не контролирует данный процесс. Погода меняется автоматически. Приятной игры и самого лучшего настроения на Majestic RP.
:?:.реп::Приветствую. Пожалуйста, уточните свой вопрос подробнее в /report. Администрация не летает на репорты по типу 'админ тп', 'админ можно поговорить', 'помогите', 'админ есть вопрос'. Количество символов в /report неограничено, вы можете полностью расписать Вашу проблему/вопрос.
:?:.неувид::Приветствую, к сожалению администрация не может увидеть это нарушение. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание.
:?:.кости::Приветствую, чтобы играть в кости вам нужно купить их в любом 24/7. После того как вы купили кости, вы можете подойти к игроку.
:?:.парк::Чтобы припарковать ТС, за рулем нажмите G - Припарковать.
:?:.новичок::Приветствую. Путеводитель находится на спавнах новичков. Они обозначены на карте значком машущего человечка.
:?:.да::Приветствую. Да. Приятной игры и хорошего настроения.
:?:.нет::Приветствую. Нет. Приятной игры и хорошего настроения.
:?:.капт::Здравствуйте, администрация не телепортирует, не лечит, не поднимает игроков перед каптом и после него, обратитесь к своим кураторам фракции в дискорд.
:?:.биз::Здравствуйте, администрация не телепортирует, не лечит, не поднимает игроков перед бизваром и после него, обратитесь к своим кураторам фракции в дискорд.
:?:.взп::Здравствуйте, администрация не телепортирует, не лечит, не поднимает игроков перед ВЗП и после него, обратитесь к своим кураторам фракции в дискорд.
:?:.нетп::Приветствую, администрация не телепортирует игроков, Вам нужно добраться до места самостоятельно.
:?:.инв::Приветствую. Это баг инвентаря, вам нужно открыть любое другое окно инвентаря, например, багажник, кладовка, склад фракции. Если ничего из перечисленного нет по близости, то перезайдите на сервер F1 - Direct connect. Приносим свои извинения за предоставленные неудобства.

; Наказания
:?:.хард::/hardban 7777 Cheats{left 12}
:?:.хард9::/hardban 9999 Cheats{left 12}
:?:.нрд30::/ajail 30 nonRP Drive{Left 15}
:?:.нрд60::/ajail 60 nonRP Drive{Left 15}
:?:.нрп60::/ajail 60 nonRP Поведение{Left 19}
:?:.нрп120::/ajail 120 nonRP Поведение{Left 20}
:?:.дб120::/ajail 120 DB{Left 7}
:?:.дб240::/ajail 240 DB{Left 7}
:?:.дм::/ajail 240 DM{Left 7}
:?:.пг60::/ajail 60 PG{Left 6}
:?:.пг120::/ajail 120 PG{Left 7}
:?:.пг240::/ajail 240 PG{Left 7}
:?:.муз::/mute 30 Music in ZZ{Left 15}
:?:.смник::/ajail 720 Смените Имя_Фамилия согласно правилам сервера{Left 50}
:?:.ккапт::/kick Помеха капту{Left 13}
:?:.кбиз::/kick Помеха бизвару{Left 15}
:?:.квзп::/kick Помеха ВЗП{Left 11}
:?:.квзм::/kick Помеха ВЗМ{Left 11}
:?:.взм120::/ajail 120 Нарушение правил ВЗМ{Left 25}
:?:.взм240::/ajail 240 Нарушение правил ВЗМ{Left 25}
:?:.оса30::/hardban 30 Оскорбление администрации{left 29}
:?:.оса15::/hardban 14 Оскорбление администрации{left 29}
:?:.оса10::/hardban 10 Оскорбление администрации{left 29}
:?:.оса::/hardban 7 Оскорбление администрации{left 28}
:?:.секс::/warn Секс. аним. без отыгровок{Left 26}

; ------------------------------------------------------------------------------------------------------------
;                                                 -----/PLAYERS-----
; ------------------------------------------------------------------------------------------------------------
; f4:: ; По нажатию F4 - открывается меню /players
; SendMessage, 0x50,, 0x4190419,, A
; SendInput, {T}/players{Enter}
; sleep 300
; SendInput, {ё}
; Return
; ------------------------------------------------------------------------------------------------------------
Помощь:
MsgBox, 8192, Помощь, Софт создан для облегчения работы администрации проекта Majestic RP.`n`nО софте:`nСофт автоматически считает кол-во отвеченных репортов в день и в неделю.`n`nДля корректной работы софта необходимо выбрать разрешение экрана, ваш дискорд, сервер и ваш пол в главном меню.`n`nЧтобы настройки вступили в силу, нужно нажать кнопку Сохранить.`n`nСписок клавиш:`nctrl + F9 - Перезапуск программы.`nctrl+ F10 - Закрыть программу.
return
Телепорты:
MsgBox, 8192, Телепорты.,`n .лспд - телепорт на LSPD`n .бол - телепорт на Больницу ЛС`n .шд - телепорт на Шерфи Департамент`n .фз - телепорт на Форрт`n .мэр - телепорт на Мерию`n .визл - телепорт на Новости`n .фиб - телепорт на ФИБ`n `n .бал - телепорт на Балласов`n .ваг - телепорт на Вагасов`n .фэм - телепорт на Фэмов`n .бладс - телепорт на Бладсов`n .мара - телепорт на Марабунту`n `n .лкн - телепорт на ЛКН`n .рм - телепорт на РМ`n .як - телепорт на Якудзу`n .мекс - телепорт на Мексиканцев`n .ам - телепорт на Армян`n `n .лост - телепорт на лостов`n .аод - телепорт на АОД`n .лис - телепорт на Грубых`n .клаб - телепорт на Гранд Клаб`n .бар - телепорт на Барины`n .манор - телепорт на Манор`n .конт - телепорт на Континеталь`n `n .хум - телепорт на Хуман Лабс`n .мейз - телепорт на Мейз Банк`n .каз - телепорт на Казино`n .аш - телепорт на АвтоШкола`n .гг - телепорт на ГанГейм`n .бургер - телепорт на Бургерную`n .багама - телепорт на Багаму Маму`n .кайо - телепорт на Остров`n .авиа - Телепорт на авианосец
return
Команды:
MsgBox, 8192, Команды,Все команды случайно написанные на транслите будут конверсирвоанные в номальное состояние. Пример: .ез -> /tp.`n `n `n Alt + A - Здравствуйте, иду.`n Alt + D - Сейчас помогу, ожидайте.`n Alt + S - Приятной игры на Majestic RP.`n Alt + Q - Приветствую. Уже лечу к вам. И автоматически закроется окно репорта и в чате введётся /tp.`n Alt + E - "Быстрый репорт". Автоматически будет взят первый репорт по списку и будет клик по строчке ответа. (пока что только 1920х1080 и 1440х900) `n Если хочешь, чтобы добавил твое разрешение к "быстрому репорту" из предложеных - пиши Sec Drokin (StickyEwoks#1337)`n `n /gc - Телепортировать авто к себе (/getcar).`n /ch - Включить инвиз для читеров (/chide).`n /sc - Заспавнить автомобиль фракциии (/spawncar)`n /ad - Администраторы в сети (/admins).`n /p - Список всех игроков сервера (/players).`n .рес - Воскресить игрока (/rescue ID).`n .ку - Выводит в чат -  Здравствуйте,.`n /sp - Начать слежку за игроком (/spec ID).`n /so - Отменить режим слежки (/specoff).`n /kill - убить игрока (/hp ID 0).`n .пиздец - Если пизда по репортам, а админы AFK (особенно Мёрфи).`n .афк - Сказать что ты отошёл от ПК.`n .дис - Отправит игроку ваш дискорд.
return
Ответы:
MsgBox, 8192, Ответы 1, Короткие команды для удобства.`n .капт - Здравствуйте, администрация не телепортирует, не лечит, не поднимает игроков перед каптом и после него, обратитесь к своим кураторам фракции в дискорд.`n.пут - Приветствую, всю информацию (команды/о фракциях, работах и так далее) можно узнать на форуме majestic-rp.ru - раздел "Путеводитель для новичков", а также в F2 - Помощь. `n.увал - Здравствуйте. К сожалению, ничем не можем помочь. Дождитесь своего лидера/заместителей или свяжитесь с куратором своей фракции в личные сообщения Discord. `n.майки - Здравствуйте. Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки". `n.слух - Здравствуйте, функция "Я не слышу" предназначена для людей с плохим слухом или его отсутствием. Злоупотребление этой функцией карается баном Вашего персонажа. Отключить ее можно в меню F2 - Настройки. Спасибо за понимание. `n.баг - Знаем о данной проблеме, она уже передана разработчикам. `n.чат - Здравствуйте. На сервере есть следующие команды для чата: /pagesize - увеличить / уменьшить размер чата; /fontsize - увеличить / уменьшить размер шрифта; /chatalpha - прозрачность чата, /timestamp - время около каждого сообщения. `n.рел - Попробуйте перезайти через F1 > Direct Connect > Connect или полностью в игру (F1 - Quit Game). `n.рп - Извините, но это РП процесс, мы не вправе вмешиваться в него. `n.урп - Приветствую, данную информацию вы можете получить при взаимодействии с другими игроками/самостоятельным поиском непосредственно во время игрового процесса, либо другим доступным IC путем. Приятной игры и самого лучшего настроения на Majestic RP. `n.войс - Чтобы перезагрузить войс, попробуйте нажать F7 или /v_reload в чат. Если ничего не помогает - перезайдите в игру. `n.тех - Здравствуйте, напишите в технический раздел на форуме. `n.техдс - Здравствуйте, напишите в раздел официального дискорд сервера "Помощь по игре" - "чат-поддержки". `n.функ - Данный функционал временно недоступен, приносим свои извинения. `n.фун - Данный функционал не присутсвует у нас на сервере. `n.изв - Приносим свои извинения за предоставленные неудобства. `n.рыба - Здравствуйте, Вам нужно нажать F3 > Разное > Продажа рыбы. `n.ехп - Каждый час (у каждого игрока своё время) Вам дается EХP. Чтобы узнать, сколько Вам осталось до следующего PayDay, нажмите клавишу F2-Статистика. `n.авто - Чтобы эвакуировать Ваше авто воспользуйтесь маркером Сервиса (Гаечный ключ на карте). Приятной игры. `n.зп - Чтобы начислялся PayDay Вам нужно иметь свою банковскую карту и быть уволеным со всех работ. Оформить её можно в любом банке. `n.ганлиц - Получить лицензию на оружие можно в LSPD или LSCSD. Приятной игры. `n.канистра - Чтобы использовать канистру, возьмите её в руки, нажмите G на авто и заправить. Приятной игры. `n.емс - К сожалению, администрация не поднимает и не лечит игроков, воспользуйтесь услугами ЕМС. `n.подним - Приветствую. К сожалению, не видя всей ситуации мы не в праве лечить,поднимать или добивать игроков. Дождитесь сотрудников EMS либо же окончания таймера смерти. Приносим свои извинения за возможные неудобства. `n.жб - Здравствуйте, администрация не может выдавать наказания и выносить какие-либо вердикты не видя всей ситуации. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание. `n.анак - Приветствую. Обратитесь, пожалуйста, в дискорд к администратору, который выдал вам наказание. `n.адс - Данный администратор сейчас отсутствует или занят, напишите ему в личные сообщения в дискорде. `n.погода - К сожалению, администрация не контролирует данный процесс. Погода меняется автоматически. `n.неп - Опишите Вашу проблему/вопрос подробнее в /report для максимально точного ответа, пожалуйста. `n.донат - Обратитесь по почте - help@majestic-rp.ru.
return
Ответыдва:
MsgBox, 8192, Ответы 2, Короткие команды для удобства.`n .бизограб - Здравствуйте, чтобы ограбить бизнес, вам нужно: одеть маску, приобрести оружие и, придя в магазин в составе от 2 до 35 человек, навестись на NPC (продавца) огнестрелом (только один человек должен грабить). Приятной игры на Majestic RP.`n.хп - Перезайдите в игру, либо купите таблетку у сотрудников EMS. `n.ремонт - Приветствую, для начала, Вам нужно купить запчасть для машины в любом магазине 24/7, после чего открыть капот , нажать G > Починить замок/аккумулятор/залить масло. Приятной игры. `n.ферм - Приветствую, на ферме для посадки каждого из растений нужны следующие навыки: Пшеница - 225 опыта. Картофель - 950 опыта. Капуста - 2000 опыта. Кукуруза - 3000 опыта. Тыква - 6200 опыта. Бананы - 10500 опыта. `n.гос - Вы можете сдать авто на свалку. После сдачи вы получите 75 процентов от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый, красный круг. `n.аним - Здравствуйте, остановите анимацию. F2 > Анимации > Остановить анимацию. `n.рыбка - 1ур.(0exp) - зоны: 1, 2, 3, 4, 5 - Форель, 0,26$ за грамм; 2ур.(300exp) - зоны: 6, 7, 8 - Камбала, 0,09$ за грамм; 3ур.(700exp) - зона 9 - Тунец, 0,03$ за грамм; 4ур.(1500exp) - зона 10 - Красный солдат, 0,43$ за грамм; 5ур.(3000exp) - зона 11 - Карась, 0,14$ за грамм.; 6ур.(5200exp) - зона 12 - Оранжевый карп, 0,05$ за грамм; 7ур.(9200exp) - зона 13 - Аквамарин, 0,18$ за грамм; 8ур.(18000exp) - зона 14 - Золотая рыбка, 0,71$ за грамм. Приятной игры на Majestic RP. `n.ид - Здравствуйте, укажите, пожалуйста, ID нарушителя. `n.сто - Степень износа определенных деталей автомобиля можно узнать на автомастерской (иконка гаечного ключа с отверткой на карте). `n.жба - Вы можете написать жалобу на форум, если не согласны с решением администратора. `n.дон - Задонатить можно на нашем официальном сайте - majestic-rp.ru/donate `n.инкас - Чтобы совместно работать Вам необходимо быть устроеным на работу (всем), загрузиться, а затем через G пригласить на работу. `n.грибы - Здравствуйте, чтобы собирать грибы вам надо приехать на точку "Грибы" 1/6 и взять в руки нож. `n.гриб - Продать грибы можно на рынке. `n.рын - Рынок находится в Лос-Сантосе межу аренды автобусов и LSPD. `n.оружрын - Приветствую. Боту на рынке можно сдать оружие только со 100 процентным износом. `n.новость - Здравствуйте, позвоните или придите лично в Weazel News. Приятной игры. `n.п - Приятной игры на Majestic RP. `n.нов - Следите за новостями сервера в официальном дискорде проекта. Приятной игры. `n.ник - Сменить ник Вы можете нажав - F2 > Донат > Настройки персонажа. `n.банк - На данный момент все банковские карты между собой равны и ничем не отличаются. Банковская система находится в разработке. `n.кавто - Чтобы сделать дубликат ключей от авто необходимо купить заготовку в магазине 24/7, затем нажать G на авто и сделать дубликат. `n.клад - Чтобы сделать дубликат от кладовки, необходимо купить заготовку в магазине 24/7, затем через G передать дубликат нужному человеку. `n.тел - Приветствую, попробуйте купить телефон еще раз в магазине 24/7, деньги с вас не спишутся. `n.подсел - Приветствую, чтобы подселить игрока к себе в дом или же квартиру, стоя около дома, наведитесь на игрока и нажмите G, далее нажмите Подселить. `n.краш2 - Здравствуйте. Если у Вас есть доказательства краша - предоставьте его любому администратору в личные сообщения дискорда. Вас выпустят. `n.замок - Вам необходимо купить "Дверной замок" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Починить дверной замок. `n.акум - Вам необходимо купить "Аккумулятор" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Заменить аккумулятор.
return
Ответытри:
MsgBox, 8192, Ответы 3, Короткие команды для удобства.`n.масло - Вам необходимо купить "Моторное масло" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Заменить масло. `n.модел - Пункт "Прогрузка моделей" отвечает за быстроту прогрузки текстур при приближении к ним. `n.капт - Здравствуйте, администрация не телепортирует, не лечит, не поднимает игроков перед каптом и после него, обратитесь к своим кураторам фракции в дискорд.`n.биз - Здравствуйте, администрация не телепортирует, не лечит, не поднимает игроков перед бизваром и после него, обратитесь к своим кураторам фракции в дискорд.`n.взп - Здравствуйте, администрация не телепортирует, не лечит, не поднимает игроков перед ВЗП и после него, обратитесь к своим кураторам фракции в дискорд.`n.нетп - Приветствую, администрация не телепортирует игроков, Вам нужно добраться до места самостоятельно. `n.спавн - Здравствуйте, cпавн новичков находится в Палето-Бей, Чумашах, Аэропорту и на Автовокзале. Приятной игры на Majestic RP. `n.кредит - Любые финансовые договоры (займы, кредиты и т.д) не относятся к ООС сделкам. Все подобные сделки игроки совершают на свой страх и риск. Администрация не несет ответственности и не является гарантом сделки. `n.рем - Приветствую, чтобы починить своё авто купите рем.комплект в любом магазине 24/7 или на АЗС. Через меню G почините Ваш автомобиль. `n.сделка - Приветствую, администрация не следит за сделками игроков, запишите видео на случай обмана, чтобы оставить жалобу на игрока на форуме. Приятной игры на MajesticRP. `n.имя - Ваше Имя Фамилия не подходит по правилам нашего сервера. Вам нужно сменить ник и написать в репорт повторно, если Ваш ник будет соблюдать правила сервера, то Вас выпустят. `n.актуал - Приветствую. Приносим извинения за столь долгое ожидание. Пожалуйста, если проблема еще актуальна, продублируйте её в /report. Спасибо за понимание. `n.лечу - Приветствую. Уже лечу к Вам на помощь. `n.пом - Приветствую. Сейчас помогу Вам, ожидайте. `n.багзз - Приветствую. Чтобы восстановить прежнюю скорость, заедьте в зеленую зону и выедьте с нее. `n.слетдом - Приветствую. Свободные дома обозначаются карте зеленым цветом. Они слетают каждый час, начиная с 00:00. Чтобы его купить, Вам потребуется иметь полную гос. стоимость наличными. `n.госдом - Приветствую. Чтобы продать дом в гос. стоимость, нужно подойти к двери и нажать Е. Вы получите 75 процентов от его гос. цены. Если Вы невовремя оплатите налоги или забудете это сделать, дом слетит автоматически. `n.майки - Здравствуйте. Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки".Приятной игры и самого лучшего настроения на Majestic RP. `n.рыблиц - Приветствую, получить лицензию на рыбалку вы можете в Мэрии. Приятной игры и самого лучшего настроения на Majestic RP. `n.погода - Приветствую, к сожалению администрация не контролирует данный процесс. Погода меняется автоматически. Приятной игры и самого лучшего настроения на Majestic RP. `n.реп - Приветствую. Пожалуйста, уточните свой вопрос подробнее в /report. Администрация не летает на репорты по типу 'админ тп', 'админ можно поговорить', 'помогите', 'админ есть вопрос'. Количество символов в /report неограничено, вы можете полностью расписать Вашу проблему/вопрос. `n.неувид - Приветствую, к сожалению администрация не может увидеть это нарушение. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание. `n.кости - Приветствую, чтобы играть в кости вам нужно купить их в любом 24/7. После того как вы купили кости, вы можете подойти к игроку. `n.парк - Чтобы припарковать ТС, за рулем нажмите G - Припарковать. `n.новичок - Приветствую. Путеводитель находится на спавнах новичков. Они обозначены на карте значком машущего человечка. `n.да - Приветствую. Да. Приятной игры и хорошего настроения. `n.нет - Приветствую. Нет. Приятной игры и хорошего настроения. `n.инв - Приветствую. Это баг инвентаря, вам нужно открыть любое другое окно инвентаря, например, багажник, кладовка, склад фракции. Если ничего из перечисленного нет по близости, то перезайдите на сервер F1 - Direct connect. Приносим свои извинения за предоставленные неудобства.
return
Наказания:
MsgBox, 8192, Наказания, sID - статический ID(#)`nID - динамический ID([ ])`n `n .хард - /hardban sID 7777 Cheats`n.хард9 - /hardban sID 9999 Cheats`n`n `n.нрд30 - /ajail sID 30 nonRP Drive`n.нрд60 - /ajail sID 60 nonRP Drive`n`n `n.нрп60 - /ajail sID  60 nonRP Поведение`n.нрп120 - /ajail sID 120 nonRP Поведение`n`n `n.дб120 - /ajail sID 120 DB`n.дб240 - /ajail sID 240 DB`n`n `n.дм - /ajail sID 240 DM`n`n `n.пг60 - /ajail sID 60 PG`n.пг120 - /ajail sID 120 PG`n.пг240 - /ajail sID 240 PG`n`n `n.муз - /mute sID 30 Music in ZZ`n`n `n.смник - /ajail sID 720 Смените Имя_Фамилия согласно правилам сервера`n`n `n.ккапт - /kick ID Помеха капту`n.кбиз - /kick ID Помеха бизвару`n.квзп - /kick ID Помеха ВЗП`n.квзм - /kick ID Помеха ВЗМ`n`n `n.взм120 - /ajail sID 120 Нарушение правил ВЗМ`n.взм240 - /ajail sID 240 Нарушение правил ВЗМ`n`n `n.оса30 - /hardban sID 30 Оскорбление администрации`n.оса15 - /hardban sID 14 Оскорбление администрации`n.оса10 - /hardban sID 10 Оскорбление администрации`n.оса - /hardban sID 7 Оскорбление администраци`n `n.секс - /warn sID Секс. аним. без отыгровок
return
Скилы:
MsgBox, 8192, Скилы, Навыки:.`n`n.вынос: Выносливость - навык выносливости повышается от подвижного образа жизни. Чем больше ты бегаешь, тем быстрее повышается навык. Соответственно повышение навыка влияет на длительность беспрерывного бега.`n`n.сила: Сила - навык силы повышается от физических нагрузок. Чем больше ты занимаешься в качалке (иконка бегущего человека на карте), тем быстрее повышается навык. От прокачки увеличивается сопротивление к урону от падения.`n`n.дых: Дыхание - навык дыхания повышается от длительного нахождения под водой. Чем больше ты плаваешь, тем быстрее повышается навык. Соответственно повышение навыка влияет на длительность беспрерывного плавания под водой.`n`n.вожден: Вождение - навык вождения повышается от времени, проведенного за рулем автомобиля. Чем больше ты водишь транспорт, тем быстрее повышается навык. От прокачки увеличивается управляемость транспортным средоством.`n`n.полет: Полет - навык пилотирования повышается от времени, проведенного за воздушным транспортом. Чем больше ты летаешь на самолете или вертолете, тем быстрее повышается навык. Также навык можно повысив пройдя курсы в летной школе. Пройти их можно 1 раз в 24 часа, увелчение навыка от 1 занятия - 10, стоимость одного занятия - 2 000$. От прокачки навыка увеличивается стабильность полета и управляемость воздушным транспортом.`n`n.скрытн: Скрытность - навык скрытности повышается от количества успешных уходов от погони (понижений уровня розыска). Чем чаще ты скрываешься от полиции, тем быстрее повышается навык. От прокачки уменьшается время, которое ты будешь находиться в розыске (быстрее пропадают звезды).`n`n.стрельба: Стрельба - навык стрельбы повышается от времени, проведенного в перестрелках, либо тренировках. Чем лучше ты стреляешь и попадаешь, тем быстрее повышается навык. Рекомендуем тренироваться в специально отведенных для того местах, тире в оружейном магазине. От прокачки навыка увеличивается скорость перезарядки и перекатов, кучность стрельбы.
return
Нов:
MsgBox, 8192, Список нововведений, Разработчиками теперь являются FILANT & Sec Drokin`n `n Список изменений 17.01.2021`n - Добавил короткие команды: /tl, /sd и их транслит.`n `n Список изменений 14.01.2021`n - Фикc "быстрого репорта".`n`n Список изменений 12.01.2021`n - Фикс "быстрого репорта".`n - Добавил "Быстрый репорт" под HD монитор (1440х900).`n - Добавил предупреждение на "Быстрый репорт" для других разрешений монитора.`n `n Список изменений 10.01.2021`n - Добавлено больше транслит команд.`n - Добавлены ответы: .инв. `n - Добавлено предупреждение от Глебасика`n `n Список изменений 09.01.2021`n - Обновили памятку под актуальные изменения.`n - Alt + E - быстро взять первый репорт(пока что только под 1920х1080). `n - Небольшой фикс быстрых репортов (для нытика кирито)`n `n Список изменений 08.01.2021`n - Добавлены команды .дис, .капт, .биз, .взп, .нетп, .секс, /sc.`n - Сменили название биндера на Gen4ik Binder.`n`nСписок изменений 07.01.2021:`n - Починили автообновление биндера.`n - Обновили памятку под актуальные правила.`n - Обновили ответы под актуальный функционал.`n - Добавили новые команды.`n - Добавили и изменили ответы.`n - Полностью переписали документацию.`n - Вырезали ненужный код.`n - Починили счётчик.`n - Изменили картинку актуальную первому серверу.
return
^F9::reload
^F10::Exitapp
