
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int sqlite3_result_int (int *,int) ;
 scalar_t__ sqlite3_value_subtype (int *) ;

__attribute__((used)) static void test_getsubtype(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3_result_int(context, (int)sqlite3_value_subtype(argv[0]));
}
