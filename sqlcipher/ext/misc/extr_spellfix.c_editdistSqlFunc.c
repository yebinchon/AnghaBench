
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int editdist1 (char const*,char const*,int ) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_int (int *,int) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void editdistSqlFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int res = editdist1(
                    (const char*)sqlite3_value_text(argv[0]),
                    (const char*)sqlite3_value_text(argv[1]),
                    0);
  if( res<0 ){
    if( res==(-3) ){
      sqlite3_result_error_nomem(context);
    }else if( res==(-2) ){
      sqlite3_result_error(context, "non-ASCII input to editdist()", -1);
    }else{
      sqlite3_result_error(context, "NULL input to editdist()", -1);
    }
  }else{
    sqlite3_result_int(context, res);
  }
}
