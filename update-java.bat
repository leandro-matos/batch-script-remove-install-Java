
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

REM Remoção da versão atual. Caso necessário basta alterar para a versão necessária
echo.
echo *** REMOVENDO AS VERSOES ANTIGAS DO JAVA 8: ***
wmic product where "name like 'Java 8 Update %%'" call uninstall /nointeractive
Echo(

REM Instalação da versão específica, basta ter o arquivo .exe e também definir as propriedades do arquivo .cfg
echo.
echo *** INSTALANDO A NOVA VERSAO: jre_8u261-windows-x64.exe NO SERVIDOR %ComputerName% ***
REM start /wait D:\jre-8u261-windows-x64.exe /s REBOOT=Suppress
D:\scripts\jre-8u261-windows-x64.exe INSTALLCFG="D:\scripts\jre-install-options.cfg" /L "D:\scripts\install.log"

REM Printa na tela a nova versão do java, caso necessário validar o arquivo de log
echo.
echo *** NOVA VERSAO DO JAVA INSTALADA COM SUCESSO !!! ***
echo.
java -version
timeout 5 

exit