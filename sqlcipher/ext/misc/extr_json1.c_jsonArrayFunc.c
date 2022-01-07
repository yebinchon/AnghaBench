
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int JsonString ;


 int JSON_SUBTYPE ;
 int jsonAppendChar (int *,char) ;
 int jsonAppendSeparator (int *) ;
 int jsonAppendValue (int *,int *) ;
 int jsonInit (int *,int *) ;
 int jsonResult (int *) ;
 int sqlite3_result_subtype (int *,int ) ;

__attribute__((used)) static void jsonArrayFunc(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  int i;
  JsonString jx;

  jsonInit(&jx, ctx);
  jsonAppendChar(&jx, '[');
  for(i=0; i<argc; i++){
    jsonAppendSeparator(&jx);
    jsonAppendValue(&jx, argv[i]);
  }
  jsonAppendChar(&jx, ']');
  jsonResult(&jx);
  sqlite3_result_subtype(ctx, JSON_SUBTYPE);
}
