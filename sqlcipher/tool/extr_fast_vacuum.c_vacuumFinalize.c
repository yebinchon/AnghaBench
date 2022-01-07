
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int * sqlite3_db_handle (int *) ;
 char* sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int stderr ;

__attribute__((used)) static void vacuumFinalize(sqlite3_stmt *pStmt){
  sqlite3 *db = sqlite3_db_handle(pStmt);
  int rc = sqlite3_finalize(pStmt);
  if( rc ){
    fprintf(stderr, "finalize error: %s\n", sqlite3_errmsg(db));
    exit(1);
  }
}
