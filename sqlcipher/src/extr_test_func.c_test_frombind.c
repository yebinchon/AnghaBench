
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_uint64 ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;


 int sqlite3_result_int64 (int *,int ) ;
 scalar_t__ sqlite3_value_frombind (int *) ;

__attribute__((used)) static void test_frombind(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3_uint64 m = 0;
  int i;
  for(i=0; i<argc && i<63; i++){
    if( sqlite3_value_frombind(argv[i]) ) m |= ((sqlite3_uint64)1)<<i;
  }
  sqlite3_result_int64(context, (sqlite3_int64)m);
}
