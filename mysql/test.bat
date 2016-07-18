set dd=%date:~8,2%
set mm=%date:~5,2%
set yy=%date:~0,4%
set Tss=%TIME:~6,2%
set Tmm=%TIME:~3,2%
set Thh=%TIME:~0,2%

set datetime=%yy%%mm%%dd%%Thh%%Tmm%%Tss%
SET bkupdir=F:\developer\mysql\backups

SET dbname=test
SET dbtable=t_user
SET dbuser=root
SET dbpassword=root
SET CharacterSet=utf8

echo %bkupdir%\%dbname%-%tm%.sql

"C:\Program Files (x86)\MySQL\MySQL Server 5.0\bin\mysqldump" -u%dbuser% -p%dbpassword% %dbname% > %bkupdir%\%dbname%-%datetime%.sql



