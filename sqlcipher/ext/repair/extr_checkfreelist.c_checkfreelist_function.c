
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 int assert (int) ;
 int checkFreelist (int *,char const*,char**) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_free (char*) ;
 int sqlite3_result_error_code (int *,int) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void checkfreelist_function(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **apArg
){
  const char *zDb;
  int rc;
  char *zOut = 0;
  sqlite3 *db = sqlite3_context_db_handle(pCtx);

  assert( nArg==1 );
  zDb = (const char*)sqlite3_value_text(apArg[0]);
  rc = checkFreelist(db, zDb, &zOut);
  if( rc==SQLITE_OK ){
    sqlite3_result_text(pCtx, zOut?zOut:"ok", -1, SQLITE_TRANSIENT);
  }else{
    sqlite3_result_error_code(pCtx, rc);
  }

  sqlite3_free(zOut);
}
