
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 scalar_t__ SQLITE_OK ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int printf (char*,char const*) ;
 char* sqlite3_errmsg (int *) ;
 scalar_t__ sqlite3_prepare (int *,char const*,int,int **,int ) ;
 int sqlite3_step (int *) ;
 int stderr ;
 int vacuumFinalize (int *) ;

__attribute__((used)) static void execSql(sqlite3 *db, const char *zSql){
  sqlite3_stmt *pStmt;
  if( !zSql ){
    fprintf(stderr, "out of memory!\n");
    exit(1);
  }
  printf("%s;\n", zSql);
  if( SQLITE_OK!=sqlite3_prepare(db, zSql, -1, &pStmt, 0) ){
    fprintf(stderr, "Error: %s\n", sqlite3_errmsg(db));
    exit(1);
  }
  sqlite3_step(pStmt);
  vacuumFinalize(pStmt);
}
