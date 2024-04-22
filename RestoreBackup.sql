--Ejecutar en el orden según se necesite, no es necesario crear previamente la BD a restaurar.


--RESTORE DATABASE Municipio_SALVADOR
--   FROM DISK = '/var/opt/mssql/data/MUNICIPIO_SALVADOR.bak'
--   WITH REPLACE,
--   MOVE 'REDE_ELETRICA' TO '/var/opt/mssql/data/REDE_EDO_SALVADOR.mdf',
--   MOVE 'REDE_ELETRICA_log' TO '/var/opt/mssql/data/REDE_EDO_SALVADOR.ldf';


--RESTORE DATABASE Municipios_CONFIG
--   FROM DISK = '/var/opt/mssql/data/ThematicConfig.bak'
--   WITH REPLACE,
--   MOVE 'RED_ELETRICA_CONFIG' TO '/var/opt/mssql/data/RED_ELETRICA_CONFIG.mdf',
--   MOVE 'RED_ELETRICA_CONFIG_log' TO '/var/opt/mssql/data/RED_ELETRICA_CONFIG_log.ldf';


RESTORE DATABASE GlobalCityPres
   FROM DISK = '/var/opt/mssql/data/backup130623.bak'
   WITH REPLACE,
   --Put Logical name here
   MOVE 'GlobalCity-Pres_Data' TO '/var/opt/mssql/data/GlobalCity-Pres.mdf',
   MOVE 'GlobalCity-Pres_Log' TO '/var/opt/mssql/data/GlobalCity-Pres.ldf';



--RESTORE HEADERONLY FROM DISK = '/var/opt/mssql/data/backup130623.bak'

--RESTORE FILELISTONLY FROM DISK = '/var/opt/mssql/data/backup130623.bak'