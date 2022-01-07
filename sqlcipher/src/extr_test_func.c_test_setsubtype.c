
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int sqlite3_result_subtype (int *,unsigned int) ;
 int sqlite3_result_value (int *,int *) ;
 scalar_t__ sqlite3_value_int (int *) ;

__attribute__((used)) static void test_setsubtype(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3_result_value(context, argv[0]);
  sqlite3_result_subtype(context, (unsigned int)sqlite3_value_int(argv[1]));
}
