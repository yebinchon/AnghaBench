
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_5__ {scalar_t__ zBuf; int * pCtx; } ;
typedef TYPE_1__ JsonString ;


 int UNUSED_PARAM (int) ;
 int jsonAppendChar (TYPE_1__*,char) ;
 int jsonAppendValue (TYPE_1__*,int *) ;
 int jsonInit (TYPE_1__*,int *) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;

__attribute__((used)) static void jsonArrayStep(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  JsonString *pStr;
  UNUSED_PARAM(argc);
  pStr = (JsonString*)sqlite3_aggregate_context(ctx, sizeof(*pStr));
  if( pStr ){
    if( pStr->zBuf==0 ){
      jsonInit(pStr, ctx);
      jsonAppendChar(pStr, '[');
    }else{
      jsonAppendChar(pStr, ',');
      pStr->pCtx = ctx;
    }
    jsonAppendValue(pStr, argv[0]);
  }
}
