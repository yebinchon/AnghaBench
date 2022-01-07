
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 unsigned char* phoneticHash (unsigned char const*,int ) ;
 int sqlite3_free ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_value_bytes (int *) ;
 unsigned char* sqlite3_value_text (int *) ;

__attribute__((used)) static void phoneticHashSqlFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *zIn;
  unsigned char *zOut;

  zIn = sqlite3_value_text(argv[0]);
  if( zIn==0 ) return;
  zOut = phoneticHash(zIn, sqlite3_value_bytes(argv[0]));
  if( zOut==0 ){
    sqlite3_result_error_nomem(context);
  }else{
    sqlite3_result_text(context, (char*)zOut, -1, sqlite3_free);
  }
}
