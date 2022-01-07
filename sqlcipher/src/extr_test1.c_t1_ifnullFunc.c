
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 scalar_t__ SQLITE_NULL ;
 int SQLITE_TRANSIENT ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static void t1_ifnullFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int i;
  for(i=0; i<argc; i++){
    if( SQLITE_NULL!=sqlite3_value_type(argv[i]) ){
      int n = sqlite3_value_bytes(argv[i]);
      sqlite3_result_text(context, (char*)sqlite3_value_text(argv[i]),
          n, SQLITE_TRANSIENT);
      break;
    }
  }
}
