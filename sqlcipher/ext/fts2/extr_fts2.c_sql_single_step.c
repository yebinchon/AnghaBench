
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;


 int SQLITE_DONE ;
 int SQLITE_OK ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int sql_single_step(sqlite3_stmt *s){
  int rc = sqlite3_step(s);
  return (rc==SQLITE_DONE) ? SQLITE_OK : rc;
}
