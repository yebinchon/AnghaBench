
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;


 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_int64 (int *,int) ;
 int sqlite3_value_int64 (int *) ;

__attribute__((used)) static void zorderFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3_int64 z, x[63];
  int i, j;
  z = 0;
  for(i=0; i<argc; i++){
    x[i] = sqlite3_value_int64(argv[i]);
  }
  if( argc>0 ){
    for(i=0; i<63; i++){
      j = i%argc;
      z |= (x[j]&1)<<i;
      x[j] >>= 1;
    }
  }
  sqlite3_result_int64(context, z);
  for(i=0; i<argc; i++){
    if( x[i] ){
      sqlite3_result_error(context, "parameter too large", -1);
    }
  }
}
