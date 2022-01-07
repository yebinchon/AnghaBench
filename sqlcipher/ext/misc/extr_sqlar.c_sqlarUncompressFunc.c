
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uLongf ;
typedef scalar_t__ uLong ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int Bytef ;


 int SQLITE_TRANSIENT ;
 scalar_t__ Z_OK ;
 int assert (int) ;
 int sqlite3_free (int *) ;
 int * sqlite3_malloc (scalar_t__) ;
 int sqlite3_result_blob (int *,int *,scalar_t__,int ) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_value (int *,int *) ;
 int * sqlite3_value_blob (int *) ;
 scalar_t__ sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_int (int *) ;
 scalar_t__ uncompress (int *,scalar_t__*,int const*,scalar_t__) ;

__attribute__((used)) static void sqlarUncompressFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  uLong nData;
  uLongf sz;

  assert( argc==2 );
  sz = sqlite3_value_int(argv[1]);

  if( sz<=0 || sz==(nData = sqlite3_value_bytes(argv[0])) ){
    sqlite3_result_value(context, argv[0]);
  }else{
    const Bytef *pData= sqlite3_value_blob(argv[0]);
    Bytef *pOut = sqlite3_malloc(sz);
    if( Z_OK!=uncompress(pOut, &sz, pData, nData) ){
      sqlite3_result_error(context, "error in uncompress()", -1);
    }else{
      sqlite3_result_blob(context, pOut, sz, SQLITE_TRANSIENT);
    }
    sqlite3_free(pOut);
  }
}
