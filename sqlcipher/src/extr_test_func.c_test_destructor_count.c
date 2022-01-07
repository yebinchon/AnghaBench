
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int sqlite3_result_int (int *,int ) ;
 int test_destructor_count_var ;

__attribute__((used)) static void test_destructor_count(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **argv
){
  sqlite3_result_int(pCtx, test_destructor_count_var);
}
