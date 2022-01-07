
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int sqlite3 ;


 int MULTIPLEX_CTRL_ENABLE ;
 int MULTIPLEX_CTRL_SET_CHUNK_SIZE ;
 int MULTIPLEX_CTRL_SET_MAX_CHUNKS ;
 int SQLITE_ERROR ;
 int SQLITE_NOTFOUND ;
 int SQLITE_OK ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_file_control (int *,int ,int,int*) ;
 int sqlite3_result_error_code (int *,int) ;
 int sqlite3_value_int (int *) ;

__attribute__((used)) static void multiplexControlFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int rc = SQLITE_OK;
  sqlite3 *db = sqlite3_context_db_handle(context);
  int op = 0;
  int iVal;

  if( !db || argc!=2 ){
    rc = SQLITE_ERROR;
  }else{

    op = sqlite3_value_int(argv[0]);
    iVal = sqlite3_value_int(argv[1]);

    switch( op ){
      case 1:
        op = MULTIPLEX_CTRL_ENABLE;
        break;
      case 2:
        op = MULTIPLEX_CTRL_SET_CHUNK_SIZE;
        break;
      case 3:
        op = MULTIPLEX_CTRL_SET_MAX_CHUNKS;
        break;
      default:
        rc = SQLITE_NOTFOUND;
        break;
    }
  }
  if( rc==SQLITE_OK ){
    rc = sqlite3_file_control(db, 0, op, &iVal);
  }
  sqlite3_result_error_code(context, rc);
}
