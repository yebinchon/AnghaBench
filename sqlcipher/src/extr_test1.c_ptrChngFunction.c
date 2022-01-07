
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int sqlite3_result_int (int *,int) ;
 scalar_t__ sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 int sqlite3_value_bytes16 (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 scalar_t__ sqlite3_value_text16 (int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void ptrChngFunction(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const void *p1, *p2;
  const char *zCmd;
  if( argc!=4 ) return;
  zCmd = (const char*)sqlite3_value_text(argv[1]);
  if( zCmd==0 ) return;
  if( strcmp(zCmd,"text")==0 ){
    p1 = (const void*)sqlite3_value_text(argv[0]);

  }else if( strcmp(zCmd, "text16")==0 ){
    p1 = (const void*)sqlite3_value_text16(argv[0]);

  }else if( strcmp(zCmd, "blob")==0 ){
    p1 = (const void*)sqlite3_value_blob(argv[0]);
  }else{
    return;
  }
  zCmd = (const char*)sqlite3_value_text(argv[2]);
  if( zCmd==0 ) return;
  if( strcmp(zCmd,"bytes")==0 ){
    sqlite3_value_bytes(argv[0]);

  }else if( strcmp(zCmd, "bytes16")==0 ){
    sqlite3_value_bytes16(argv[0]);

  }else if( strcmp(zCmd, "noop")==0 ){

  }else{
    return;
  }
  zCmd = (const char*)sqlite3_value_text(argv[3]);
  if( zCmd==0 ) return;
  if( strcmp(zCmd,"text")==0 ){
    p2 = (const void*)sqlite3_value_text(argv[0]);

  }else if( strcmp(zCmd, "text16")==0 ){
    p2 = (const void*)sqlite3_value_text16(argv[0]);

  }else if( strcmp(zCmd, "blob")==0 ){
    p2 = (const void*)sqlite3_value_blob(argv[0]);
  }else{
    return;
  }
  sqlite3_result_int(context, p1!=p2);
}
