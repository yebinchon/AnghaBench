
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_str ;
typedef int sqlite3 ;


 int fprintf (int ,char*,...) ;
 int printf (char*,...) ;
 int rename_all_tables (int *,int *,int *) ;
 int sqlite3_close (int *) ;
 int sqlite3_free (char*) ;
 int sqlite3_open (char*,int **) ;
 char* sqlite3_str_finish (int *) ;
 int * sqlite3_str_new (int *) ;
 int stderr ;

int main(int argc, char **argv){
  sqlite3 *db;
  int rc;
  sqlite3_str *pConvert;
  sqlite3_str *pUndo;
  char *zDbName;
  char *zSql1, *zSql2;
  if( argc!=2 ){
    fprintf(stderr, "Usage: %s DATABASE\n", argv[0]);
  }
  zDbName = argv[1];
  rc = sqlite3_open(zDbName, &db);
  if( rc ){
    fprintf(stderr, "sqlite3_open() returns %d\n", rc);
    return 1;
  }
  pConvert = sqlite3_str_new(db);
  pUndo = sqlite3_str_new(db);
  rename_all_tables(db, pConvert, pUndo);
  zSql1 = sqlite3_str_finish(pConvert);
  zSql2 = sqlite3_str_finish(pUndo);
  sqlite3_close(db);
  printf("BEGIN;\n");
  printf("%s", zSql1);
  sqlite3_free(zSql1);
  printf(".schema --indent\n");
  printf("PRAGMA integrity_check;\n");
  printf("%s", zSql2);
  sqlite3_free(zSql2);
  printf("PRAGMA integrity_check;\n");
  printf("ROLLBACK;\n");
  return 0;
}
