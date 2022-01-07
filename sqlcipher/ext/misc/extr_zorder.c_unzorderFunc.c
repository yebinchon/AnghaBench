
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;


 int sqlite3_result_int64 (int *,int) ;
 int sqlite3_value_int64 (int *) ;

__attribute__((used)) static void unzorderFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3_int64 z, n, i, x;
  int j, k;
  z = sqlite3_value_int64(argv[0]);
  n = sqlite3_value_int64(argv[1]);
  i = sqlite3_value_int64(argv[2]);
  x = 0;
  for(k=0, j=i; j<63; j+=n, k++){
    x |= ((z>>j)&1)<<k;
  }
  sqlite3_result_int64(context, x);
}
