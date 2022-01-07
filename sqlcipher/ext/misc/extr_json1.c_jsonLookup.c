
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_context ;
struct TYPE_4__ {int nErr; } ;
typedef TYPE_1__ JsonParse ;
typedef int JsonNode ;


 int assert (int) ;
 int * jsonLookupStep (TYPE_1__*,int ,char const*,int*,char const**) ;
 char* jsonPathSyntaxError (char const*) ;
 int sqlite3_free (char*) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_error_nomem (int *) ;

__attribute__((used)) static JsonNode *jsonLookup(
  JsonParse *pParse,
  const char *zPath,
  int *pApnd,
  sqlite3_context *pCtx
){
  const char *zErr = 0;
  JsonNode *pNode = 0;
  char *zMsg;

  if( zPath==0 ) return 0;
  if( zPath[0]!='$' ){
    zErr = zPath;
    goto lookup_err;
  }
  zPath++;
  pNode = jsonLookupStep(pParse, 0, zPath, pApnd, &zErr);
  if( zErr==0 ) return pNode;

lookup_err:
  pParse->nErr++;
  assert( zErr!=0 && pCtx!=0 );
  zMsg = jsonPathSyntaxError(zErr);
  if( zMsg ){
    sqlite3_result_error(pCtx, zMsg, -1);
    sqlite3_free(zMsg);
  }else{
    sqlite3_result_error_nomem(pCtx);
  }
  return 0;
}
