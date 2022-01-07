
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int JsonParse ;


 int UNUSED_PARAM (int) ;
 int * jsonParseCached (int *,int **,int ) ;
 int sqlite3_result_int (int *,int) ;

__attribute__((used)) static void jsonValidFunc(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  JsonParse *p;
  UNUSED_PARAM(argc);
  p = jsonParseCached(ctx, argv, 0);
  sqlite3_result_int(ctx, p!=0);
}
