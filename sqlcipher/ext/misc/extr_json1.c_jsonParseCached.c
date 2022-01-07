
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_8__ {int nJson; char* zJson; scalar_t__ iHold; scalar_t__ nErr; } ;
typedef TYPE_1__ JsonParse ;


 scalar_t__ JSON_CACHE_ID ;
 int JSON_CACHE_SZ ;
 scalar_t__ jsonParse (TYPE_1__*,int *,char*) ;
 scalar_t__ jsonParseFree ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int memcpy (char*,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3_free (TYPE_1__*) ;
 scalar_t__ sqlite3_get_auxdata (int *,scalar_t__) ;
 TYPE_1__* sqlite3_malloc64 (int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_set_auxdata (int *,scalar_t__,TYPE_1__*,void (*) (void*)) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static JsonParse *jsonParseCached(
  sqlite3_context *pCtx,
  sqlite3_value **argv,
  sqlite3_context *pErrCtx
){
  const char *zJson = (const char*)sqlite3_value_text(argv[0]);
  int nJson = sqlite3_value_bytes(argv[0]);
  JsonParse *p;
  JsonParse *pMatch = 0;
  int iKey;
  int iMinKey = 0;
  u32 iMinHold = 0xffffffff;
  u32 iMaxHold = 0;
  if( zJson==0 ) return 0;
  for(iKey=0; iKey<JSON_CACHE_SZ; iKey++){
    p = (JsonParse*)sqlite3_get_auxdata(pCtx, JSON_CACHE_ID+iKey);
    if( p==0 ){
      iMinKey = iKey;
      break;
    }
    if( pMatch==0
     && p->nJson==nJson
     && memcmp(p->zJson,zJson,nJson)==0
    ){
      p->nErr = 0;
      pMatch = p;
    }else if( p->iHold<iMinHold ){
      iMinHold = p->iHold;
      iMinKey = iKey;
    }
    if( p->iHold>iMaxHold ){
      iMaxHold = p->iHold;
    }
  }
  if( pMatch ){
    pMatch->nErr = 0;
    pMatch->iHold = iMaxHold+1;
    return pMatch;
  }
  p = sqlite3_malloc64( sizeof(*p) + nJson + 1 );
  if( p==0 ){
    sqlite3_result_error_nomem(pCtx);
    return 0;
  }
  memset(p, 0, sizeof(*p));
  p->zJson = (char*)&p[1];
  memcpy((char*)p->zJson, zJson, nJson+1);
  if( jsonParse(p, pErrCtx, p->zJson) ){
    sqlite3_free(p);
    return 0;
  }
  p->nJson = nJson;
  p->iHold = iMaxHold+1;
  sqlite3_set_auxdata(pCtx, JSON_CACHE_ID+iMinKey, p,
                      (void(*)(void*))jsonParseFree);
  return (JsonParse*)sqlite3_get_auxdata(pCtx, JSON_CACHE_ID+iMinKey);
}
