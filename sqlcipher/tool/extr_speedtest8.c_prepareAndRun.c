
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite_uint64 ;
typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 int SQLITE_ROW ;
 scalar_t__ finalizeTime ;
 scalar_t__ prepTime ;
 int printf (char*,...) ;
 scalar_t__ runTime ;
 scalar_t__ sqlite3Hwtime () ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int *,char const*,int,int **,char const**) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static void prepareAndRun(sqlite3 *db, const char *zSql, int bQuiet){
  sqlite3_stmt *pStmt;
  const char *stmtTail;
  sqlite_uint64 iStart, iElapse;
  int rc;

  if (!bQuiet){
    printf("***************************************************************\n");
  }
  if (!bQuiet) printf("SQL statement: [%s]\n", zSql);
  iStart = sqlite3Hwtime();
  rc = sqlite3_prepare_v2(db, zSql, -1, &pStmt, &stmtTail);
  iElapse = sqlite3Hwtime() - iStart;
  prepTime += iElapse;
  if (!bQuiet){
    printf("sqlite3_prepare_v2() returns %d in %llu cycles\n", rc, iElapse);
  }
  if( rc==SQLITE_OK ){
    int nRow = 0;
    iStart = sqlite3Hwtime();
    while( (rc=sqlite3_step(pStmt))==SQLITE_ROW ){ nRow++; }
    iElapse = sqlite3Hwtime() - iStart;
    runTime += iElapse;
    if (!bQuiet){
      printf("sqlite3_step() returns %d after %d rows in %llu cycles\n",
             rc, nRow, iElapse);
    }
    iStart = sqlite3Hwtime();
    rc = sqlite3_finalize(pStmt);
    iElapse = sqlite3Hwtime() - iStart;
    finalizeTime += iElapse;
    if (!bQuiet){
      printf("sqlite3_finalize() returns %d in %llu cycles\n", rc, iElapse);
    }
  }
}
