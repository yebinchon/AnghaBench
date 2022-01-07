
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;
struct dstr {int z; int nUsed; } ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int sqlite3 ;


 int SQLITE_TRANSIENT ;
 int execFuncCallback ;
 int memset (struct dstr*,int ,int) ;
 int sqlite3_exec (int *,char*,int ,struct dstr*,int ) ;
 int sqlite3_free (int ) ;
 int sqlite3_result_text (int *,int ,int ,int ) ;
 scalar_t__ sqlite3_user_data (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void sqlite3ExecFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  struct dstr x;
  memset(&x, 0, sizeof(x));
  (void)sqlite3_exec((sqlite3*)sqlite3_user_data(context),
      (char*)sqlite3_value_text(argv[0]),
      execFuncCallback, &x, 0);
  sqlite3_result_text(context, x.z, x.nUsed, SQLITE_TRANSIENT);
  sqlite3_free(x.z);
}
