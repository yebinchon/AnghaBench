
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int sqlite3_free ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_value_bytes (int *) ;
 unsigned char* sqlite3_value_text (int *) ;
 unsigned char* transliterate (unsigned char const*,int) ;

__attribute__((used)) static void transliterateSqlFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *zIn = sqlite3_value_text(argv[0]);
  int nIn = sqlite3_value_bytes(argv[0]);
  unsigned char *zOut = transliterate(zIn, nIn);
  if( zOut==0 ){
    sqlite3_result_error_nomem(context);
  }else{
    sqlite3_result_text(context, (char*)zOut, -1, sqlite3_free);
  }
}
