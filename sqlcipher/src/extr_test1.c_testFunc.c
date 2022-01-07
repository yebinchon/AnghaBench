
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int SQLITE_TRANSIENT ;
 scalar_t__ sqlite3StrICmp (char const*,char*) ;
 int sqlite3_result_double (int *,int ) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_int (int *,size_t) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_null (int *) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_result_value (int *,int *) ;
 int sqlite3_value_double (int *) ;
 size_t sqlite3_value_int (int *) ;
 int sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void testFunc(sqlite3_context *context, int argc, sqlite3_value **argv){
  while( argc>=2 ){
    const char *zArg0 = (char*)sqlite3_value_text(argv[0]);
    if( zArg0 ){
      if( 0==sqlite3StrICmp(zArg0, "int") ){
        sqlite3_result_int(context, sqlite3_value_int(argv[1]));
      }else if( sqlite3StrICmp(zArg0,"int64")==0 ){
        sqlite3_result_int64(context, sqlite3_value_int64(argv[1]));
      }else if( sqlite3StrICmp(zArg0,"string")==0 ){
        sqlite3_result_text(context, (char*)sqlite3_value_text(argv[1]), -1,
            SQLITE_TRANSIENT);
      }else if( sqlite3StrICmp(zArg0,"double")==0 ){
        sqlite3_result_double(context, sqlite3_value_double(argv[1]));
      }else if( sqlite3StrICmp(zArg0,"null")==0 ){
        sqlite3_result_null(context);
      }else if( sqlite3StrICmp(zArg0,"value")==0 ){
        sqlite3_result_value(context, argv[sqlite3_value_int(argv[1])]);
      }else{
        goto error_out;
      }
    }else{
      goto error_out;
    }
    argc -= 2;
    argv += 2;
  }
  return;

error_out:
  sqlite3_result_error(context,"first argument should be one of: "
      "int int64 string double null value", -1);
}
