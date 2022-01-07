
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_5__ {scalar_t__ oom; int aNode; } ;
typedef TYPE_1__ JsonParse ;
typedef int JsonNode ;


 int UNUSED_PARAM (int) ;
 int assert (int) ;
 int * jsonMergePatch (TYPE_1__*,int ,int ) ;
 scalar_t__ jsonParse (TYPE_1__*,int *,char const*) ;
 int jsonParseReset (TYPE_1__*) ;
 int jsonReturnJson (int *,int *,int ) ;
 int sqlite3_result_error_nomem (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void jsonPatchFunc(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  JsonParse x;
  JsonParse y;
  JsonNode *pResult;

  UNUSED_PARAM(argc);
  if( jsonParse(&x, ctx, (const char*)sqlite3_value_text(argv[0])) ) return;
  if( jsonParse(&y, ctx, (const char*)sqlite3_value_text(argv[1])) ){
    jsonParseReset(&x);
    return;
  }
  pResult = jsonMergePatch(&x, 0, y.aNode);
  assert( pResult!=0 || x.oom );
  if( pResult ){
    jsonReturnJson(pResult, ctx, 0);
  }else{
    sqlite3_result_error_nomem(ctx);
  }
  jsonParseReset(&x);
  jsonParseReset(&y);
}
