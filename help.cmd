::2021 Just(TM) SmartOctopus(TM) Studio Open Source Project
::2021��ʯ��(TM)С����(TM)������ ��Դ��Ŀ
::created on 2021-10-27 13:28
::edit on 2021-11-05 23:45
@echo off
TITLE WindowsԤ��װ����ʵ�ó���������ǹٷ���
if not exist %windir%\system32\wpeutil.exe (
  echo.
  echo ������WindowsԤ��װ������WinPE�������У������˳�......
  echo.
  pause
  exit
)
echo ������������......
wpeutil InitializeNetwork
mode con lines=35  rem �������ڴ�С
:v
cls
echo.
echo WindowsԤ��װ����ʵ�ó���������ǹٷ���
echo.
echo --��ʯ��(TM)С����(TM)������ ����
echo.
echo ����
ver
echo.
echo ��1��Dism++
echo ��2��DiskGenius
echo ��3��Ghost
echo ��4��WinNTSetup
echo ��5��NTPassword ϵͳ�����޸Ĺ���
echo ��6��BOOTICE �����޸�����
echo ��7��CPU-Z ��⹤��
echo ��8��7-zip ѹ�����
echo ��9��Imagine ͼƬ�鿴��
echo ��10��Everything �ļ���������
echo ��11��GoHash ��ϣֵ����
echo ��12��EasySysprep ϵͳ��װ����
echo ��se��ϵͳ��¼����ճ�ͼ��޸�Ϊ������ʾ�� ��ָ�
echo ��a��������ʾ��
echo ��b�����±�
echo ��c��ע���༭��
echo ��d�����������
echo ��e��Microsoft Edge �����
echo ��s���ػ�
echo ��r����������
echo ��o������Ļ�ϴ�ӡһֻС����
echo.
SET "CHOICE="
SET /P CHOICE="��ѡ����Ų����س�ȷ��: "
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
SET /P edisk="������Windowsϵͳ�̣���C:�����Իس����ύ     "
if not exist "%edisk%"\Windows\system32\sethc.exe (
     echo.
     echo ѡ���Windowsϵͳ�̲���ȷ��
     echo.
     pause
     goto :v
                                                  )
echo.
echo ��1����sethc.exe������Ϊsethc1.exe����cmd.exe����Ϊsethc.exe
echo ��2���ָ�
echo �����������ַ����������˵�
echo.
set /P echoice="��ѡ���Իس����ύ     "
if /I '%echoice%'=='1' (
        ren %edisk%\Windows\system32\sethc.exe sethc1.exe
        copy %edisk%\Windows\system32\cmd.exe %edisk%\Windows\system32\sethc.exe
        echo ��ɣ����������¼���������5��shift���ɻ���������ʾ�����ڡ�
                       ) else ( if /I '%echoice%'=='2' (
	                               del %edisk%\Windows\system32\sethc.exe
                                   ren %edisk%\Windows\system32\sethc1.exe sethc.exe
                                   echo �ѻָ���
		                    	                       ) else ( goto :v )
		                      ) 
pause
goto :v
