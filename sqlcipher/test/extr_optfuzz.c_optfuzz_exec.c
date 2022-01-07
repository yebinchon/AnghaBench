
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zLine ;
typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_DONE ;
 int SQLITE_NULL ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQLITE_TEXT ;
 int SQLITE_TRANSIENT ;
 int assert (int) ;
 int exit (int) ;
 int * prepare_sql (int *,char*) ;
 int printf (char*,...) ;
 int run_sql (int *,char*,...) ;
 int sqlite3_bind_text (int *,int,char*,int,int ) ;
 int sqlite3_column_count (int *) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_column_type (int *,int) ;
 char* sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int *,char const*,int,int **,char const**) ;
 int sqlite3_reset (int *) ;
 int sqlite3_snprintf (int,char*,char*,char const*) ;
 int sqlite3_sql (int *) ;
 scalar_t__ sqlite3_step (int *) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int optfuzz_exec(
  sqlite3 *dbRun,
  const char *zSql,
  sqlite3 *dbOut,
  const char *zOutTab,
  int *pnStmt,
  int *pnRow,
  int bTrace
){
  int rc = SQLITE_OK;
  const char *zLeftover;
  sqlite3_stmt *pStmt = 0;
  sqlite3_stmt *pIns = 0;
  const char *zCol;
  int nCol;
  char zLine[4000];

  run_sql(dbOut, "BEGIN");
  run_sql(dbOut, "CREATE TABLE IF NOT EXISTS staging(x TEXT)");
  run_sql(dbOut, "CREATE TABLE IF NOT EXISTS \"%w\"(x TEXT)", zOutTab);
  pIns = prepare_sql(dbOut, "INSERT INTO staging(x) VALUES(?1)");
  *pnRow = *pnStmt = 0;
  while( rc==SQLITE_OK && zSql && zSql[0] ){
    zLeftover = 0;
    rc = sqlite3_prepare_v2(dbRun, zSql, -1, &pStmt, &zLeftover);
    zSql = zLeftover;
    assert( rc==SQLITE_OK || pStmt==0 );
    if( rc!=SQLITE_OK ){
      printf("Error with [%s]\n%s\n", zSql, sqlite3_errmsg(dbRun));
      break;
    }
    if( !pStmt ) continue;
    (*pnStmt)++;
    nCol = sqlite3_column_count(pStmt);
    run_sql(dbOut, "DELETE FROM staging;");
    while( sqlite3_step(pStmt)==SQLITE_ROW ){
      int i, j;
      for(i=j=0; i<nCol && j<sizeof(zLine)-50; i++){
        int eType = sqlite3_column_type(pStmt, i);
        if( eType==SQLITE_NULL ){
          zCol = "NULL";
        }else{
          zCol = (const char*)sqlite3_column_text(pStmt, i);
        }
        if( i ) zLine[j++] = ',';
        if( eType==SQLITE_TEXT ){
          sqlite3_snprintf(sizeof(zLine)-j, zLine+j, "'%q'", zCol);
        }else{
          sqlite3_snprintf(sizeof(zLine)-j, zLine+j, "%s", zCol);
        }
        j += (int)strlen(zLine+j);
      }


      if( j>=sizeof(zLine)-100 ){
        printf("Excessively long output line: %d bytes\n" ,j);
        exit(1);
      }
      if( bTrace ){
        printf("%s\n", zLine);
      }
      (*pnRow)++;
      sqlite3_bind_text(pIns, 1, zLine, j, SQLITE_TRANSIENT);
      rc = sqlite3_step(pIns);
      assert( rc==SQLITE_DONE );
      rc = sqlite3_reset(pIns);
    }
    run_sql(dbOut,
      "INSERT INTO \"%w\"(x) VALUES('### %q ###')",
      zOutTab, sqlite3_sql(pStmt)
    );
    run_sql(dbOut,
      "INSERT INTO \"%w\"(x) SELECT group_concat(x,char(10))"
      "  FROM (SELECT x FROM staging ORDER BY x)",
      zOutTab
    );
    run_sql(dbOut, "COMMIT");
    sqlite3_finalize(pStmt);
    pStmt = 0;
  }
  sqlite3_finalize(pStmt);
  sqlite3_finalize(pIns);
  return rc;
}
