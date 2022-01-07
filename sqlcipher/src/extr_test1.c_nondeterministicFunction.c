
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int sqlite3_result_int (int *,int ) ;

__attribute__((used)) static void nondeterministicFunction(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  static int cnt = 0;
  sqlite3_result_int(context, cnt++);
}
