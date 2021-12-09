const mysql = require('mysql');
//const http = require('http');

const connection = mysql.createConnection({
    host: "localhost",
    port: "3306",
    database: "leltar",
    user: "leltar",
    password: "leltar_123"
});


connection.connect((err) => {
    if (err) throw err;
    console.log("----------------------------------");
    const myQuery = "SELECT DISTINCT gep.ipcim AS 'ip_cim', gep.hely as 'gep_hely', szoftver.nev as 'szoftver_nev'  FROM gep INNER JOIN telepites on gep.id=telepites.gepid INNER JOIN szoftver ON telepites.szoftverid=szoftver.id WHERE YEAR(telepites.datum)=2016 GROUP BY gep.id,szoftver.nev HAVING COUNT(szoftver.id)>=2;";
    connection.query(myQuery, (err, result, fields) => {
        if (err) throw err;
        console.log('-----------------------------');
        const sorok = JSON.parse(JSON.stringify(result));
        console.log("1. feladat")
        for (sor of sorok) {
            console.log(`Ipcim:  ${sor.ip_cim}, Hely: ${sor.gep_hely}, Szoftver név: ${sor.szoftver_nev}`);
        }
    
    });
    const myQuery1 = "SELECT gep.ipcim AS 'ip_cim' FROM gep INNER JOIN telepites on gep.id=telepites.gepid INNER JOIN szoftver ON telepites.szoftverid=szoftver.id where nev='Mozilla Firefox' AND gep.ipcim IN(SELECT gep.ipcim FROM gep INNER JOIN telepites on gep.id=telepites.gepid INNER JOIN szoftver ON telepites.szoftverid=szoftver.id WHERE nev='Google Chrome');";
    connection.query(myQuery1, (err, result, fields) => {
        if (err) throw err;
        console.log('-----------------------------');
        const sorok = JSON.parse(JSON.stringify(result));
        console.log("2. feladat")
        for (sor of sorok) {
            console.log(`Ipcim:  ${sor.ip_cim}`);
        }
    
    });

    
    const myInsert = "INSERT INTO gep(hely,tipus,ipcim) VALUES ('T202','notebook','172.16.0.102');";
    connection.query( myInsert, (err, result) =>{
        if (err) throw err;
        console.log("3. feladat Adatbeszúrás");
        console.log(`Beszúrva: ${result.affectedRows} sor`);
    });
    const myUpdate = "UPDATE telepites SET verzio='1.0.0' WHERE verzio is null;";
    connection.query( myUpdate, (err, result) =>{
        if (err) throw err;
        console.log("5. feladat Adat módosítás");
        console.log(`Módosítva: ${result.affectedRows} sor`);
    });
    const myDelete = "DELETE FROM szoftver WHERE kategoria LIKE'%demo%';";
    connection.query( myDelete, (err, result) =>{
        if (err) throw err;
        console.log("3. feladat Adat törlés");
        console.log(`Törölve: ${result.affectedRows} sor`);
    });
    connection.end();

});

    


