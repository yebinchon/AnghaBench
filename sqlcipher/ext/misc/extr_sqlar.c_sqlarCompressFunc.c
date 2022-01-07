
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uLongf ;
typedef int uLong ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int Bytef ;


 scalar_t__ SQLITE_BLOB ;
 int SQLITE_TRANSIENT ;
 scalar_t__ Z_OK ;
 int assert (int) ;
 scalar_t__ compress (int *,int *,int const*,int ) ;
 int compressBound (int ) ;
 int sqlite3_free (int *) ;
 scalar_t__ sqlite3_malloc (int ) ;
 int sqlite3_result_blob (int *,int *,int ,int ) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_value (int *,int *) ;
 int * sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static void sqlarCompressFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  assert( argc==1 );
  if( sqlite3_value_type(argv[0])==SQLITE_BLOB ){
    const Bytef *pData = sqlite3_value_blob(argv[0]);
    uLong nData = sqlite3_value_bytes(argv[0]);
    uLongf nOut = compressBound(nData);
    Bytef *pOut;

    pOut = (Bytef*)sqlite3_malloc(nOut);
    if( pOut==0 ){
      sqlite3_result_error_nomem(context);
      return;
    }else{
      if( Z_OK!=compress(pOut, &nOut, pData, nData) ){
        sqlite3_result_error(context, "error in compress()", -1);
      }else if( nOut<nData ){
        sqlite3_result_blob(context, pOut, nOut, SQLITE_TRANSIENT);
      }else{
        sqlite3_result_value(context, argv[0]);
      }
      sqlite3_free(pOut);
    }
  }else{
    sqlite3_result_value(context, argv[0]);
  }
}
