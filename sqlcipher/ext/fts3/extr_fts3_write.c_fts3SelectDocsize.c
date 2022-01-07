
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3_int64 ;
typedef int Fts3Table ;


 int FTS_CORRUPT_VTAB ;
 scalar_t__ SQLITE_BLOB ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int SQL_SELECT_DOCSIZE ;
 int fts3SqlStmt (int *,int ,int **,int ) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 scalar_t__ sqlite3_column_type (int *,int ) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int fts3SelectDocsize(
  Fts3Table *pTab,
  sqlite3_int64 iDocid,
  sqlite3_stmt **ppStmt
){
  sqlite3_stmt *pStmt = 0;
  int rc;

  rc = fts3SqlStmt(pTab, SQL_SELECT_DOCSIZE, &pStmt, 0);
  if( rc==SQLITE_OK ){
    sqlite3_bind_int64(pStmt, 1, iDocid);
    rc = sqlite3_step(pStmt);
    if( rc!=SQLITE_ROW || sqlite3_column_type(pStmt, 0)!=SQLITE_BLOB ){
      rc = sqlite3_reset(pStmt);
      if( rc==SQLITE_OK ) rc = FTS_CORRUPT_VTAB;
      pStmt = 0;
    }else{
      rc = SQLITE_OK;
    }
  }

  *ppStmt = pStmt;
  return rc;
}
