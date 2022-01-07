
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int sqlite3_result_double (int *,double) ;
 double sqlite3_value_double (int *) ;

__attribute__((used)) static void cubeFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  double r = sqlite3_value_double(argv[0]);
  sqlite3_result_double(context, r*r*r);
}
