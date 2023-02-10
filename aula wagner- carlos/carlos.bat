  @echo off
  cls
  :menu
  cls
  color FA

  date /t		
  time /t
echo ===========================================================
echo    Computador: %computername%       Usuario: %username% 
echo ===========================================================              
echo            MENU TAREFAS
echo  ==================================
echo * 1. Exibir a calculadora          * 
echo * 2. Fazer Backup                  *
echo * 3. Acessar site da NASA          *
echo * 4. Painel de Controle            *
echo * 5. Desligar o computador	   *		 
echo * 6. Sair  			   * 			
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7

:opcao1
cls
rd /S /Q c:\$Recycle.bin
start calc
echo ==================================
echo *       Calculadora     *
echo ==================================
pause
goto menu

:opcao2
cls
start Backup
xcopy /T /C C:\Users\%username%\Documents\*.* C:\Users\%username%\AppData\Local\Microsoft\WindowsApps\Backup


echo ==================================
echo *      Backup concluido           *
echo ==================================
pause
goto menu

:opcao3
cls

start https://www.nasa.gov/
echo ==================================
echo *     Site Nasa       *
echo ==================================
chkdsk c:
pause
goto menu

:opcao4
cls
start control
control.exe
pause
goto menu

:opcao5
shutdown

:opcao6
cls
exit

:opcao7
cls
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu