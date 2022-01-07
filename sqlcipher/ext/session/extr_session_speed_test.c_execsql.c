
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int SQLITE_OK ;
 int abort_due_to_error (int) ;
 int sqlite3_exec (int *,char const*,int ,int ,int ) ;

__attribute__((used)) static void execsql(sqlite3 *db, const char *zSql){
  int rc = sqlite3_exec(db, zSql, 0, 0, 0);
  if( rc!=SQLITE_OK ) abort_due_to_error(rc);
}
