
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_context ;
struct TYPE_6__ {char const* zJson; scalar_t__ iDepth; scalar_t__ oom; } ;
typedef TYPE_1__ JsonParse ;


 int assert (int) ;
 int jsonParseReset (TYPE_1__*) ;
 int jsonParseValue (TYPE_1__*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ safe_isspace (char const) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_error_nomem (int *) ;

__attribute__((used)) static int jsonParse(
  JsonParse *pParse,
  sqlite3_context *pCtx,
  const char *zJson
){
  int i;
  memset(pParse, 0, sizeof(*pParse));
  if( zJson==0 ) return 1;
  pParse->zJson = zJson;
  i = jsonParseValue(pParse, 0);
  if( pParse->oom ) i = -1;
  if( i>0 ){
    assert( pParse->iDepth==0 );
    while( safe_isspace(zJson[i]) ) i++;
    if( zJson[i] ) i = -1;
  }
  if( i<=0 ){
    if( pCtx!=0 ){
      if( pParse->oom ){
        sqlite3_result_error_nomem(pCtx);
      }else{
        sqlite3_result_error(pCtx, "malformed JSON", -1);
      }
    }
    jsonParseReset(pParse);
    return 1;
  }
  return 0;
}
