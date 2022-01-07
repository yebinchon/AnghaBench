
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_6__ {scalar_t__ zBuf; int * pCtx; } ;
typedef TYPE_1__ JsonString ;


 int UNUSED_PARAM (int) ;
 int jsonAppendChar (TYPE_1__*,char) ;
 int jsonAppendString (TYPE_1__*,char const*,scalar_t__) ;
 int jsonAppendValue (TYPE_1__*,int *) ;
 int jsonInit (TYPE_1__*,int *) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 scalar_t__ sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void jsonObjectStep(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  JsonString *pStr;
  const char *z;
  u32 n;
  UNUSED_PARAM(argc);
  pStr = (JsonString*)sqlite3_aggregate_context(ctx, sizeof(*pStr));
  if( pStr ){
    if( pStr->zBuf==0 ){
      jsonInit(pStr, ctx);
      jsonAppendChar(pStr, '{');
    }else{
      jsonAppendChar(pStr, ',');
      pStr->pCtx = ctx;
    }
    z = (const char*)sqlite3_value_text(argv[0]);
    n = (u32)sqlite3_value_bytes(argv[0]);
    jsonAppendString(pStr, z, n);
    jsonAppendChar(pStr, ':');
    jsonAppendValue(pStr, argv[1]);
  }
}
