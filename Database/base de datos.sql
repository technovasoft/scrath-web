//Manejo de proyectos\\

CREATE TABLE Proyectos(idPro INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR (100),
  PRIMARY KEY(idPro)
);

CREATE TABLE Miembros(idMiem INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR (100),
  ape VARCHAR (100),
  ape2 VARCHAR (100),
  Proyectoid INT,
  FOREIGN KEY (Proyectoid) REFERENCES Proyectos(idPro),
  PRIMARY KEY (idMiem)
);

CREATE TABLE Encargados(idEncar INT NOT NULL AUTO_INCREMENT,
    Proyecid INT,
    Miembroid INT,
    FOREIGN KEY (Proyecid) REFERENCES Proyectos(idPro),
    FOREIGN KEY (Miembroid) REFERENCES Miembros(idMiem),
    PRIMARY KEY ( idEncar)
);


//Registro\\

CREATE TABLE Encargado(idEn INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR (100),
  ape VARCHAR (100),
  ape2 VARCHAR (100),
  edad INT,
  correo VARCHAR (100),
  PRIMARY KEY(idEn)
);

CREATE TABLE Municipios(idMun INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR (150),
  PRIMARY KEY(idMun)
);

CREATE TABLE Grados(idGra INT NOT NULL AUTO_INCREMENT,
  Primaria VARCHAR (100),
  Secundaria VARCHAR (100),
  PRIMARY KEY(idGra)
);


CREATE TABLE Escuelas(idEscuela INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR (150),
  direc VARCHAR (100),
  Munici INT,
  Grade INT,
  FOREIGN KEY (Munici) REFERENCES Municipios(idMun),
  FOREIGN KEY (Grade) REFERENCES Grados(idGra),
  PRIMARY KEY(idEscuela)
);

CREATE TABLE Alumnos(idAlum INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR (100),
  ape VARCHAR (100),
  ape2 VARCHAR(100),
  edad INT,
  IDencargado INT,
  IDescuela INT,
  FOREIGN KEY (IDencargado) REFERENCES Encargado(idEn),
  FOREIGN KEY (IDescuela) REFERENCES Escuelas(idEscuela),
  PRIMARY KEY (idAlum)
);



//Sponsors\\

CREATE TABLE version (
  idver INT NOT NULL AUTO_INCREMENT,
  edicion VARCHAR(100) NOT NULL,
  PRIMARY KEY  (idver)
);

CREATE TABLE Recursos(idRecursos INT NOT NULL AUTO_INCREMENT,
  Aportacion INT,
  PRIMARY KEY  (idRecursos)
);

CREATE TABLE Recursos(idRecursos INT NOT NULL AUTO_INCREMENT,
  Aportacion INT,
  idversion INT,
  FOREIGN KEY (idvesion) REFERENCES version(idver),
  PRIMARY KEY  (idRecursos)
);

CREATE TABLE Sponsor(idSpon INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR (100),
  domicilio VARCHAR (100),
  IDrecursos INT,
  IDversion INT,
  FOREIGN KEY (IDrecursos) REFERENCES Recursos(idRecursos),
  FOREIGN KEY (IDversion) REFERENCES version(idver),
  PRIMARY KEY (idAlum)
);




//Login\\

CREATE TABLE usuarios (
  idusuario INT(11) NOT NULL AUTO_INCREMENT,
  usuario VARCHAR(20) NOT NULL,
  password VARCHAR(10) NOT NULL,
  PRIMARY KEY  (idusuario)
);
