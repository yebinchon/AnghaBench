
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int Fts3Cursor ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;
 int sqlite3_result_error (int *,char*,int) ;
 scalar_t__ sqlite3_value_pointer (int *,char*) ;

__attribute__((used)) static int fts3FunctionArg(
  sqlite3_context *pContext,
  const char *zFunc,
  sqlite3_value *pVal,
  Fts3Cursor **ppCsr
){
  int rc;
  *ppCsr = (Fts3Cursor*)sqlite3_value_pointer(pVal, "fts3cursor");
  if( (*ppCsr)!=0 ){
    rc = SQLITE_OK;
  }else{
    char *zErr = sqlite3_mprintf("illegal first argument to %s", zFunc);
    sqlite3_result_error(pContext, zErr, -1);
    sqlite3_free(zErr);
    rc = SQLITE_ERROR;
  }
  return rc;
}
