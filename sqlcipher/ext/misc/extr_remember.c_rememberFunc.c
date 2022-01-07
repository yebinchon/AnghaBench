
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;


 int assert (int) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_value_int64 (int *) ;
 int * sqlite3_value_pointer (int *,char*) ;

__attribute__((used)) static void rememberFunc(
  sqlite3_context *pCtx,
  int argc,
  sqlite3_value **argv
){
  sqlite3_int64 v;
  sqlite3_int64 *ptr;
  assert( argc==2 );
  v = sqlite3_value_int64(argv[0]);
  ptr = sqlite3_value_pointer(argv[1], "carray");
  if( ptr ) *ptr = v;
  sqlite3_result_int64(pCtx, v);
}
