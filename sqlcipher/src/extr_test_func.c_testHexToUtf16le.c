
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int assert (int) ;
 int sqlite3_free ;
 char* sqlite3_malloc (int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_text16le (int *,char*,int,int ) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 int testHexToBin (char const*,char*) ;

__attribute__((used)) static void testHexToUtf16le(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **argv
){
  int n;
  const char *zIn;
  char *zOut;
  assert( nArg==1 );
  n = sqlite3_value_bytes(argv[0]);
  zIn = (const char*)sqlite3_value_text(argv[0]);
  zOut = sqlite3_malloc( n/2 );
  if( zOut==0 ){
    sqlite3_result_error_nomem(pCtx);
  }else{
    testHexToBin(zIn, zOut);
    sqlite3_result_text16le(pCtx, zOut, n/2, sqlite3_free);
  }
}
