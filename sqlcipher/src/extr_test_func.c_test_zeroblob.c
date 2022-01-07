
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int sqlite3_result_zeroblob (int *,int) ;
 int sqlite3_value_int (int *) ;

__attribute__((used)) static void test_zeroblob(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int nZero = sqlite3_value_int(argv[0]);
  sqlite3_result_zeroblob(context, nZero);
}
