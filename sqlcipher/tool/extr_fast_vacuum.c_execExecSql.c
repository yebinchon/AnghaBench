
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int execSql (int *,char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int printf (char*,char const*) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 char* sqlite3_errmsg (int *) ;
 int sqlite3_prepare (int *,char const*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;
 int stderr ;
 int vacuumFinalize (int *) ;

__attribute__((used)) static void execExecSql(sqlite3 *db, const char *zSql){
  sqlite3_stmt *pStmt;
  int rc;

  printf("%s;\n", zSql);
  rc = sqlite3_prepare(db, zSql, -1, &pStmt, 0);
  if( rc!=SQLITE_OK ){
    fprintf(stderr, "Error: %s\n", sqlite3_errmsg(db));
    exit(1);
  }
  while( SQLITE_ROW==sqlite3_step(pStmt) ){
    execSql(db, (char*)sqlite3_column_text(pStmt, 0));
  }
  vacuumFinalize(pStmt);
}
