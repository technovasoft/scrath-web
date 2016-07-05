//Ingresos\\
INSERT INTO Proyectos VALUES(0,'linefollower');
INSERT INTO Proyectos VALUES(0,'sumo');

INSERT INTO Miembros VALUES(0,'Ernesto','Ruiz','Valdivia',1);
INSERT INTO Miembros VALUES(0,'Eduardo','Almeida','Grover',1);

INSERT INTO Encargados VALUES(0,1,1);

//Consultas\\
SELECT M.nom,M.ape FROM Miembros AS M ,Proyectos AS P, Encargados AS E where E.Miembroid = M.idMiem AND P.idPro = M.Proyectoid;
//Eliminaciones\\
