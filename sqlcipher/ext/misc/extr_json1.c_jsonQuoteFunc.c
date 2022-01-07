
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int JsonString ;


 int JSON_SUBTYPE ;
 int UNUSED_PARAM (int) ;
 int jsonAppendValue (int *,int *) ;
 int jsonInit (int *,int *) ;
 int jsonResult (int *) ;
 int sqlite3_result_subtype (int *,int ) ;

__attribute__((used)) static void jsonQuoteFunc(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  JsonString jx;
  UNUSED_PARAM(argc);

  jsonInit(&jx, ctx);
  jsonAppendValue(&jx, argv[0]);
  jsonResult(&jx);
  sqlite3_result_subtype(ctx, JSON_SUBTYPE);
}
