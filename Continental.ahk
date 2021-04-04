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

IniRead, Radio1, Settings.ini, Settings, Male
IniRead, Radio2, Settings.ini, Settings, Female

Gui, 1: Show, x202 y148 h220 w450, Continental AHK by A$AP ; 
Gui, 1: Color, 1e2124
Gui, 1: Add, Button, x350 y10 w90 h23 gНов, Changelog



Gui, 1:  Add, Button, x230 y65 w210 h40, Закрыть скриптп ; добавление кнопки "Закрыть скриптп"
Gui, 1:  Add, Button, x230 y115 w210 h40 gSaveData3, Перезапустить скрипт ; добавление кнопки "Перезапустить скрипт"
Gui, 1:  Add, Button, x10 y65 w210 h40 gИнформация, Информация ; добавление кнопки "Информация"
Gui, 1:  Add, Button, x10 y165 w210 h40, Обновить скрипт

Gui, 1: Font, c0xFFFFFF
Gui, 1: Add, Text, x175 y10 w90 h23 +0x200 +Border +0x1, Ваш пол
Gui, 1: Add, Radio, x140 y35 w90 h23 Group vRadio1 Checked%Radio1%, Мужской пол
Gui, 1: Add, Radio, x230 y35 w90 h23 vRadio2 Checked%Radio2%, Женский пол
;Gui, 1: Add, Button, x275 y175 w113 h33 gSaveData3, Сохранить ; Не нужно

IniRead, qdis, Settings.ini,Discord, qdis
if qdis=ERROR 
{
IniWrite, FILANT, Settings.ini, Discord, qdis
IniWrite, 0900, Settings.ini, Discord, qtag
IniWrite, FILANT, Settings.ini, Discord, gdis
IniWrite, 0900, Settings.ini, Discord, gtag
reload
}
return

ButtonОбновитьскрипт:
Filedelete, %A_ScriptDir%\NewForum.ahk
IfnotExist, %A_ScriptDir%\NewForum.ahk
{
URLDownloadToFile, https://server7.hosting.reg.ru/manager/ispmgr?elid=Continental.ahk,%A_ScriptDir%\Continental.ahk
Run,%A_ScriptDir%\Continental.ahk
ExitApp
}


GuiClose: ;если мы закроем скрипт
WinMinimize
Return ;обязательно нужно, иначе будет нестабильно работать

ButtonЗакрытьскрипт: ;если мы закроем скрипт
ExitApp
Return ;обязательно нужно, иначе будет нестабильно работать

ButtonПерезапуститьскрипт: ;если мы закроем скрипт
Reload
Return ;обязательно нужно, иначе будет нестабильно работать




SaveData1:
    Gui, 4: Submit, NoHide
    IniWrite, %qdis%, Settings.ini, Discord, qdis
    IniWrite, %qtag%, Settings.ini, Discord, qtag
    Reload
return



SaveData2:
    Gui, 4: Submit, NoHide
    IniWrite, %gdis%, Settings.ini, Discord, gdis
    IniWrite, %gtag%, Settings.ini, Discord, gtag
    Reload
return

SaveData3:
    Gui, 1: Submit, NoHide
    IniWrite, %Radio1%, Settings.ini, Settings, Male
    IniWrite, %Radio2%, Settings.ini, Settings, Female
    Reload
return

:?:.срез::
SendMessage, 0x50,, 0x4090409 
    if (Radio1==1) {
        SendInput, /try достал нож из кармана и срезал бронежилет
    }
    else {
        SendInput, /try достала нож из кармана и срезала бронежилет
    }
Return


:?:.кош::
SendMessage, 0x50,, 0x4090409
IniRead, qdis, Settings.ini,Discord, qdis
IniRead, qtag, Settings.ini,Discord, qtag 
    if (Radio1==1) {
        BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me прохлопал верхний и нижний слой одежды и нашел кошелёк
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me достал из кошелька все деньги и выбросил на пол
    }
    else {
        BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me прохлопала верхний и нижний слой одежды и нашла кошелёк
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me достала из кошелька все деньги и выбросила на пол
    }
Return

:?:.ном::
SendMessage, 0x50,, 0x4090409
    if (Radio1==1) {
    BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me достал отвертку из кармана
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Отвертка в руке.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me скрутил номера у машины, после чего номер упал на землю
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Номер на земле. 
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me взял номер в руку
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Номер в руке. 
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me закинул номера в багажник 
}
    else {
            BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me достала отвертку из кармана
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Отвертка в руке.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me скрутила номера у машины, после чего номер упал на землю
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Номер на земле. 
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me взяла номер в руку
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Номер в руке. 
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me закинула номера в багажник 
    }
Return

:?:.сумо::
SendMessage, 0x50,, 0x4090409
    if (Radio1==1) {
        BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me открыл сумку
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Сумка открыта.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me начал смотреть содержимое сумки
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Что находится в сумке?
    }
    else {
               BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me открыла сумку
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Сумка открыта.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me начала смотреть содержимое сумки
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Что находится в сумке?
    }
Return

:?:.сумз::
SendMessage, 0x50,, 0x4090409
IniRead, qdis, Settings.ini,Discord, qdis
IniRead, qtag, Settings.ini,Discord, qtag 
    if (Radio1==1) {
        BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me закрыл сумку
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Сумка закрыта.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me взял сумку с пола
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me повесил сумку на плечо
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Сумка на плече.
    }
    else {
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me закрыла сумку
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Сумка закрыта.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me взяла сумку с пола
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me повесила сумку на плечо
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Сумка на плече.
    }
Return

:?:.конс::
SendMessage, 0x50,, 0x4090409
    if (Radio1==1) {   
   BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Распечатанные контракты и ручка лежат на столе.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me взял контракт и ручку со стола
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Контракт и ручка находятся руках.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do В контракте написано: При вступлении Вы обязуетесь соблюдать свод правил отеля. При увольнении ПСЖ штраф 5000$ и Вы будете обязаны сдать спец-форму. При похищении или задержании (спец-службами) Вы обязуетесь сохранять конфиденциальную информацию нашей организации.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me передал контракт с ручкой для подписи человеку напротив
    }
    else {
       BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Распечатанные контракты и ручка лежат на столе.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me взяла контракт и ручку со стола
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Контракт и ручка находятся руках.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do В контракте написано: При вступлении Вы обязуетесь соблюдать свод правил отеля. При увольнении ПСЖ штраф 5000$ и Вы будете обязаны сдать спец-форму. При похищении или задержании (спец-службами) Вы обязуетесь сохранять конфиденциальную информацию нашей организации.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me передала контракт с ручкой для подписи человеку напротив
    }
Return

:?:.консс::
SendMessage, 0x50,, 0x4090409 
IniRead, qdis, Settings.ini,Discord, qdis
IniRead, qtag, Settings.ini,Discord, qtag 
    if (Radio1==1){
     BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Контракт и ручка лежат в подсумке.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me взял контракт и ручку из подсумки
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Контракт и ручка находятся руках.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do В контракте написано: При вступлении Вы обязуетесь соблюдать свод правил отеля. При увольнении ПСЖ штраф 5000$ и Вы будете обязаны сдать спец-форму. При похищении или задержании (спец-службами) Вы обязуетесь сохранять конфиденциальную информацию нашей организации.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me передал контракт с ручкой для подписи человеку напротив
    }
    else{
         BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Контракт и ручка лежат в подсумке.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me взяла контракт и ручку из подсумки
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do Контракт и ручка находятся руках.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /do В контракте написано: При вступлении Вы обязуетесь соблюдать свод правил отеля. При увольнении ПСЖ штраф 5000$ и Вы будете обязаны сдать спец-форму. При похищении или задержании (спец-службами) Вы обязуетесь сохранять конфиденциальную информацию нашей организации.
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /me передала контракт с ручкой для подписи человеку напротив
    }
Return



;Боксы
Информация:
MsgBox, 8192, Информация, Биндер помогает Вам быстро отыгрывать.`n `nПол сохраняется при перезапуске скрипта.`n`n`n - .кош - Отыгровка ограбления.`n - .ном - Отыгровка снятия номеров на машине.`n - .сумо - Отыгровка открытия сумки.`n - .сумз - Отыгровка закрытия сумки.`n - .конс - Отыгровка контракт на столе.`n - .консс - Отыгровка контракт в сумке. `n `n `n Биндер разработал - A$AP (Tyler Cramer).`n Если есть идеи, что можно добавить в биндер, пишите - A$AP#6969.`n 
return

Нов:
MsgBox, 8192, Список нововведений, Список изменений 08.03.2021`n - Добавлена возможность выбирать пол для правильных окончаний.`n - Немного переписанана и обновлена "Информация".`n - Добавлен отказ - .оск.`n - Добавлен готовый ответ на ООС обман через кости - .кости.`n - Добавлены перенаправления на 2, 3, 4 сервера - .с1, .с2, .с3.`n - Некоторые ответы были актуализированны в связи с изменением регламента.`n - Добавлена кнопка Changelog для просмотра последних изменений.
Return
