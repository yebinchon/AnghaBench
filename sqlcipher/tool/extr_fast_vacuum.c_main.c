
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_uint64 ;
typedef int sqlite3 ;
typedef int r ;


 int execExecSql (int *,char*) ;
 int execSql (int *,char*) ;
 int fprintf (int ,char*,char const*,...) ;
 int printf (char*,...) ;
 int rename (char const*,char const*) ;
 int sqlite3_close (int *) ;
 char* sqlite3_errstr (int) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*,...) ;
 int sqlite3_open (char const*,int **) ;
 int sqlite3_randomness (int,int *) ;
 int stderr ;

int main(int argc, char **argv){
  sqlite3 *db;
  int rc;
  sqlite3_uint64 r;
  const char *zDbToVacuum;
  char *zBackupDb;
  char *zTempDb;
  char *zSql;

  if( argc!=2 ){
    fprintf(stderr, "Usage: %s DATABASE\n", argv[0]);
    return 1;
  }



  zDbToVacuum = argv[1];
  printf("-- open database file \"%s\"\n", zDbToVacuum);
  rc = sqlite3_open(zDbToVacuum, &db);
  if( rc ){
    fprintf(stderr, "%s: %s\n", zDbToVacuum, sqlite3_errstr(rc));
    return 1;
  }





  sqlite3_randomness(sizeof(r), &r);
  zTempDb = sqlite3_mprintf("%s-vacuum-%016llx", zDbToVacuum, r);
  zBackupDb = sqlite3_mprintf("%s-backup-%016llx", zDbToVacuum, r);



  zSql = sqlite3_mprintf("ATTACH '%q' AS vacuum_db;", zTempDb);
  execSql(db, zSql);
  sqlite3_free(zSql);
  execSql(db, "PRAGMA writable_schema=ON");
  execSql(db, "BEGIN");





  execExecSql(db,
      "SELECT 'CREATE TABLE vacuum_db.' || substr(sql,14) "
      "  FROM sqlite_master WHERE type='table' AND name!='sqlite_sequence'"
      "   AND rootpage>0"
  );
  execExecSql(db,
      "SELECT 'CREATE INDEX vacuum_db.' || substr(sql,14)"
      "  FROM sqlite_master WHERE sql LIKE 'CREATE INDEX %'"
  );
  execExecSql(db,
      "SELECT 'CREATE UNIQUE INDEX vacuum_db.' || substr(sql,21) "
      "  FROM sqlite_master WHERE sql LIKE 'CREATE UNIQUE INDEX %'"
  );





  execExecSql(db,
      "SELECT 'INSERT INTO vacuum_db.' || quote(name) "
      "|| ' SELECT * FROM main.' || quote(name) "
      "FROM main.sqlite_master "
      "WHERE type = 'table' AND name!='sqlite_sequence' "
      "  AND rootpage>0"
  );



  execExecSql(db,
      "SELECT 'DELETE FROM vacuum_db.' || quote(name) "
      "FROM vacuum_db.sqlite_master WHERE name='sqlite_sequence'"
  );
  execExecSql(db,
      "SELECT 'INSERT INTO vacuum_db.' || quote(name) "
      "|| ' SELECT * FROM main.' || quote(name) "
      "FROM vacuum_db.sqlite_master WHERE name=='sqlite_sequence'"
  );






  execSql(db,
      "INSERT INTO vacuum_db.sqlite_master "
      "  SELECT type, name, tbl_name, rootpage, sql"
      "    FROM main.sqlite_master"
      "   WHERE type='view' OR type='trigger'"
      "      OR (type='table' AND rootpage=0)"
  );



  execSql(db, "COMMIT");
  printf("-- close database\n");
  sqlite3_close(db);






  printf("-- rename \"%s\" to \"%s\"\n", zDbToVacuum, zBackupDb);
  rename(zDbToVacuum, zBackupDb);
  printf("-- rename \"%s\" to \"%s\"\n", zTempDb, zDbToVacuum);
  rename(zTempDb, zDbToVacuum);


  sqlite3_free(zTempDb);
  sqlite3_free(zBackupDb);
  return 0;
}
