
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 scalar_t__ sqlite3_column_int (int *,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char const*,char const*) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int sqlGetInteger(
  sqlite3 *db,
  const char *zDb,
  const char *zFmt,
  u32 *pnOut
){
  int rc, rc2;
  char *zSql;
  sqlite3_stmt *pStmt = 0;
  int bOk = 0;

  zSql = sqlite3_mprintf(zFmt, zDb);
  if( zSql==0 ){
    rc = SQLITE_NOMEM;
  }else{
    rc = sqlite3_prepare_v2(db, zSql, -1, &pStmt, 0);
    sqlite3_free(zSql);
  }

  if( rc==SQLITE_OK && SQLITE_ROW==sqlite3_step(pStmt) ){
    *pnOut = (u32)sqlite3_column_int(pStmt, 0);
    bOk = 1;
  }

  rc2 = sqlite3_finalize(pStmt);
  if( rc==SQLITE_OK ) rc = rc2;
  if( rc==SQLITE_OK && bOk==0 ) rc = SQLITE_ERROR;
  return rc;
}
