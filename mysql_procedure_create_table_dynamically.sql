delimiter $$
--DROP PROCEDURE IF EXISTS `softencuestas`.`creartabla`;
CREATE DEFINER=`root`@`localhost` PROCEDURE `creartabla`(nombretabla varchar(100))
BEGIN
     DECLARE myquery VARCHAR(1000) DEFAULT 'CREATE TABLE ';
     
     IF nombretabla IS NOT NULL THEN
        SET myquery=CONCAT(myquery,nombretabla);
     END IF;     

    SET @sql=CONCAT(myquery,' ( id VARCHAR(15) NOT NULL , descripcion VARCHAR(100) NULL default '''');');
    PREPARE s1 FROM @sql;
    EXECUTE s1;
    DEALLOCATE PREPARE s1;
END
$$

delimiter ;
CALL creartabla('Cesar')
CALL creartabla('ejem')
CALL creartabla('tablaejemop')
CALL creartabla('camaron')
 
SHOW PROCEDURE STATUS
SHOW TABLES
 
