
@ECHO OFF
Color 0A
rem *************************************************************
rem *** Autor………: Leandro ***
rem *** Data……….: 06/11/2020 (Alterado em: ) ***
rem *** Funcao……..: Script para remoção/instalação do Java  ***
rem *************************************************************
SetLocal EnableDelayedExpansion

echo.
echo VERSAO ATUAL DO JAVA QUE SERA REMOVIDA:
echo.
java -version
timeout 5

cls
TITLE Atualizando a Versão do Java

REM Validar onde está instalado a versão atual do JRE
echo.
echo *** REMOVENDO AS VERSOES ANTIGAS DO JAVA 8: ***
wmic product where "name like 'Java 8 Update 271%%'" call uninstall /nointeractive
Echo(

echo.

echo *** INSTALANDO A NOVA VERSAO: jre_8u261-windows-x64.exe NO SERVIDOR %ComputerName% ***
REM start /wait D:\jre-8u261-windows-x64.exe /s REBOOT=Suppress
D:\scripts\jre-8u261-windows-x64.exe INSTALLCFG="D:\scripts\jre-install-options.cfg" /L "D:\scripts\install.log"

echo.
echo *** NOVA VERSAO DO JAVA INSTALADA COM SUCESSO !!! ***
echo.
java -version
timeout 5 

exit