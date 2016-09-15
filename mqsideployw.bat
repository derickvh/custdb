@REM Windows batch file to set the mqsi environment
@REM and execute the mqsiprofile command.

@REM Saves the current working directory and enter the directory where 'mqsiprofile' generally lives.

pushd %1

@call "mqsiprofile.cmd"

REM >NUL 2>NUL

popd

echo '%~dp0'

:: Get back to the project directory.
::
:: %2 = integration node
:: %3 = hostname
:: %4 = port
:: %5 = bar file
:: %6 = intergration server

echo "mqsideploy %2 -i %3 -p %4 -a %5 -e %6"
