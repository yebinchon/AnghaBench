
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int sqlite3_result_value (int *,int *) ;
 int sqlite3_value_text (int *) ;
 int sqlite3_value_text16 (int *) ;

__attribute__((used)) static void test_isolation(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **argv
){

  sqlite3_value_text16(argv[0]);
  sqlite3_value_text(argv[0]);
  sqlite3_value_text16(argv[0]);
  sqlite3_value_text(argv[0]);

  sqlite3_result_value(pCtx, argv[1]);
}
