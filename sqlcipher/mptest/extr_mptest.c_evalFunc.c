
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int sqlite3 ;
typedef int res ;
struct TYPE_5__ {int z; } ;
typedef TYPE_1__ String ;


 int SQLITE_TRANSIENT ;
 int UNUSED_PARAMETER (int) ;
 int evalCallback ;
 int memset (TYPE_1__*,int ,int) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_exec (int *,char const*,int ,TYPE_1__*,char**) ;
 int sqlite3_free (char*) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_error_code (int *,int) ;
 int sqlite3_result_text (int *,int ,int,int ) ;
 scalar_t__ sqlite3_value_text (int *) ;
 int stringFree (TYPE_1__*) ;

__attribute__((used)) static void evalFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3 *db = sqlite3_context_db_handle(context);
  const char *zSql = (const char*)sqlite3_value_text(argv[0]);
  String res;
  char *zErrMsg = 0;
  int rc;
  UNUSED_PARAMETER(argc);
  memset(&res, 0, sizeof(res));
  rc = sqlite3_exec(db, zSql, evalCallback, &res, &zErrMsg);
  if( zErrMsg ){
    sqlite3_result_error(context, zErrMsg, -1);
    sqlite3_free(zErrMsg);
  }else if( rc ){
    sqlite3_result_error_code(context, rc);
  }else{
    sqlite3_result_text(context, res.z, -1, SQLITE_TRANSIENT);
  }
  stringFree(&res);
}
