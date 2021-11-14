::2021 Just(TM) SmartOctopus(TM) Studio Open Source Project
::2021旧石塔(TM)小章鱼(TM)工作室 开源项目
::created on 2021-10-27 13:28
::edit on 2021-11-05 23:45
@echo off
TITLE Windows预安装环境实用程序帮助（非官方）
if not exist %windir%\system32\wpeutil.exe (
  echo.
  echo 必须在Windows预安装环境（WinPE）下运行！正在退出......
  echo.
  pause
  exit
)
echo 正在启用网络......
wpeutil InitializeNetwork
mode con lines=35  rem 调整窗口大小
:v
cls
echo.
echo Windows预安装环境实用程序帮助（非官方）
echo.
echo --旧石塔(TM)小章鱼(TM)工作室 制作
echo.
echo 基于
ver
echo.
echo 【1】Dism++
echo 【2】DiskGenius
echo 【3】Ghost
echo 【4】WinNTSetup
echo 【5】NTPassword 系统密码修改工具
echo 【6】BOOTICE 引导修复工具
echo 【7】CPU-Z 检测工具
echo 【8】7-zip 压缩软件
echo 【9】Imagine 图片查看器
echo 【10】Everything 文件检索工具
echo 【11】GoHash 哈希值工具
echo 【12】EasySysprep 系统封装工具
echo 【se】系统登录界面粘滞键修改为命令提示符 或恢复
echo 【a】命令提示符
echo 【b】记事本
echo 【c】注册表编辑器
echo 【d】任务管理器
echo 【e】Microsoft Edge 浏览器
echo 【s】关机
echo 【r】重新启动
echo 【o】在屏幕上打印一只小章鱼
echo.
SET "CHOICE="
SET /P CHOICE="请选择序号并按回车确认: "
IF /I '%CHOICE%'=='1' "%ProgramFiles%"\Dism++\Dism++x64.exe
IF /I '%CHOICE%'=='2' "%ProgramFiles%"\DiskGenius\DiskGenius.exe
IF /I '%CHOICE%'=='3' "%ProgramFiles%"\Ghost\Ghost64.exe
IF /I '%CHOICE%'=='4' "%ProgramFiles%"\WinNTSetup\WinNTSetup.exe
IF /I '%CHOICE%'=='5' "%ProgramFiles%"\NTPassword\password.exe
IF /I '%CHOICE%'=='6' "%ProgramFiles%"\BOOTICE\BOOTICE.exe
IF /I '%CHOICE%'=='7' "%ProgramFiles%"\CPU-Z\cpuz.exe
IF /I '%CHOICE%'=='8' "%ProgramFiles%"\7-zip\7zFM.exe
IF /I '%CHOICE%'=='9' "%ProgramFiles%"\Imagine\Imagine64.exe
IF /I '%CHOICE%'=='10' "%ProgramFiles%"\Everything\Everything.exe
IF /I '%CHOICE%'=='11' "%ProgramFiles%"\GoHash\GoHash.EXE
IF /I '%CHOICE%'=='12' "%ProgramFiles%"\EasySysprep\Data\ES5x64.exe
IF /I '%CHOICE%'=='se' goto :se
IF /I '%CHOICE%'=='a' cmd.exe
IF /I '%CHOICE%'=='b' notepad.exe
IF /I '%CHOICE%'=='c' regedit.exe
IF /I '%CHOICE%'=='d' taskmgr.exe
IF /I '%CHOICE%'=='e' "%ProgramFiles%"\Edge\msedge.exe "https://www.baidu.com/"
IF /I '%CHOICE%'=='s' shutdown.exe -s -t 0
IF /I '%CHOICE%'=='r' shutdown.exe -r -t 0
IF /I '%CHOICE%'=='o' goto :o
goto :v
:o
cls
echo.
echo.
echo                         ####
echo                  ##             ##
echo               ##                   ##
echo              ##   *         *      ##
echo              ##                     ##
echo              ##       3           ##
echo                ##                 ##
echo                   ##           ##
echo                    $   ####   $
echo                    $    $    $   $
echo                  $     $    $   $
echo                    $    $    $    $
echo                    $    $    $    $
echo.
echo.
pause
goto :v
:se
cls
echo.
SET /P edisk="请输入Windows系统盘（如C:），以回车键提交     "
if not exist "%edisk%"\Windows\system32\sethc.exe (
     echo.
     echo 选择的Windows系统盘不正确！
     echo.
     pause
     goto :v
                                                  )
echo.
echo 【1】将sethc.exe重命名为sethc1.exe并将cmd.exe复制为sethc.exe
echo 【2】恢复
echo 【其他任意字符】返回主菜单
echo.
set /P echoice="请选择，以回车键提交     "
if /I '%echoice%'=='1' (
        ren %edisk%\Windows\system32\sethc.exe sethc1.exe
        copy %edisk%\Windows\system32\cmd.exe %edisk%\Windows\system32\sethc.exe
        echo 完成！重启进入登录界面后连按5次shift键可唤出命令提示符窗口。
                       ) else ( if /I '%echoice%'=='2' (
	                               del %edisk%\Windows\system32\sethc.exe
                                   ren %edisk%\Windows\system32\sethc1.exe sethc.exe
                                   echo 已恢复！
		                    	                       ) else ( goto :v )
		                      ) 
pause
goto :v
