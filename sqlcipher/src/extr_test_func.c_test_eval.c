
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
typedef int sqlite3_context ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 int SQLITE_ROW ;
 int assert (int) ;
 int sqlite3_column_value (int *,int ) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free ;
 char* sqlite3_mprintf (char*,int ) ;
 int sqlite3_prepare_v2 (int *,char const*,int,int **,int ) ;
 int sqlite3_result_error_code (int *,int) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_result_value (int *,int ) ;
 int sqlite3_step (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void test_eval(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **argv
){
  sqlite3_stmt *pStmt;
  int rc;
  sqlite3 *db = sqlite3_context_db_handle(pCtx);
  const char *zSql;

  zSql = (char*)sqlite3_value_text(argv[0]);
  rc = sqlite3_prepare_v2(db, zSql, -1, &pStmt, 0);
  if( rc==SQLITE_OK ){
    rc = sqlite3_step(pStmt);
    if( rc==SQLITE_ROW ){
      sqlite3_result_value(pCtx, sqlite3_column_value(pStmt, 0));
    }
    rc = sqlite3_finalize(pStmt);
  }
  if( rc ){
    char *zErr;
    assert( pStmt==0 );
    zErr = sqlite3_mprintf("sqlite3_prepare_v2() error: %s",sqlite3_errmsg(db));
    sqlite3_result_text(pCtx, zErr, -1, sqlite3_free);
    sqlite3_result_error_code(pCtx, rc);
  }
}
