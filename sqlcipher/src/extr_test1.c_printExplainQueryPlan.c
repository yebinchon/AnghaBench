
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int printf (char*,int,int,int,char const*) ;
 int sqlite3_column_int (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_db_handle (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;
 int sqlite3_prepare_v2 (int ,char*,int,int **,int ) ;
 char* sqlite3_sql (int *) ;
 scalar_t__ sqlite3_step (int *) ;

int printExplainQueryPlan(sqlite3_stmt *pStmt){
  const char *zSql;
  char *zExplain;
  sqlite3_stmt *pExplain;
  int rc;

  zSql = sqlite3_sql(pStmt);
  if( zSql==0 ) return SQLITE_ERROR;

  zExplain = sqlite3_mprintf("EXPLAIN QUERY PLAN %s", zSql);
  if( zExplain==0 ) return SQLITE_NOMEM;

  rc = sqlite3_prepare_v2(sqlite3_db_handle(pStmt), zExplain, -1, &pExplain, 0);
  sqlite3_free(zExplain);
  if( rc!=SQLITE_OK ) return rc;

  while( SQLITE_ROW==sqlite3_step(pExplain) ){
    int iSelectid = sqlite3_column_int(pExplain, 0);
    int iOrder = sqlite3_column_int(pExplain, 1);
    int iFrom = sqlite3_column_int(pExplain, 2);
    const char *zDetail = (const char *)sqlite3_column_text(pExplain, 3);

    printf("%d %d %d %s\n", iSelectid, iOrder, iFrom, zDetail);
  }

  return sqlite3_finalize(pExplain);
}
