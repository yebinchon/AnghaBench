
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int Fts3Table ;


 int FTS_CORRUPT_VTAB ;
 int FTS_STAT_DOCTOTAL ;
 scalar_t__ SQLITE_BLOB ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQL_SELECT_STAT ;
 int fts3SqlStmt (int *,int ,int **,int ) ;
 int sqlite3_bind_int (int *,int,int ) ;
 scalar_t__ sqlite3_column_type (int *,int ) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;

int sqlite3Fts3SelectDoctotal(
  Fts3Table *pTab,
  sqlite3_stmt **ppStmt
){
  sqlite3_stmt *pStmt = 0;
  int rc;
  rc = fts3SqlStmt(pTab, SQL_SELECT_STAT, &pStmt, 0);
  if( rc==SQLITE_OK ){
    sqlite3_bind_int(pStmt, 1, FTS_STAT_DOCTOTAL);
    if( sqlite3_step(pStmt)!=SQLITE_ROW
     || sqlite3_column_type(pStmt, 0)!=SQLITE_BLOB
    ){
      rc = sqlite3_reset(pStmt);
      if( rc==SQLITE_OK ) rc = FTS_CORRUPT_VTAB;
      pStmt = 0;
    }
  }
  *ppStmt = pStmt;
  return rc;
}
