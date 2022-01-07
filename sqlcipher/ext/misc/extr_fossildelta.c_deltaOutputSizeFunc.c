
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 scalar_t__ SQLITE_NULL ;
 int assert (int) ;
 int delta_output_size (char const*,int) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_int (int *,int) ;
 scalar_t__ sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static void deltaOutputSizeFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const char *aDelta; int nDelta;
  int nOut;
  assert( argc==1 );
  if( sqlite3_value_type(argv[0])==SQLITE_NULL ) return;
  nDelta = sqlite3_value_bytes(argv[0]);
  aDelta = (const char*)sqlite3_value_blob(argv[0]);


  nOut = delta_output_size(aDelta, nDelta);
  if( nOut<0 ){
    sqlite3_result_error(context, "corrupt fossil delta", -1);
    return;
  }else{
    sqlite3_result_int(context, nOut);
  }
}
