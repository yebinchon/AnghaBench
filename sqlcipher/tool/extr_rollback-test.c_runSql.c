
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int execCallback ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ nReply ;
 char* sqlite3_errmsg (int *) ;
 int sqlite3_exec (int *,char const*,int ,int ,char**) ;
 int stderr ;

__attribute__((used)) static void runSql(sqlite3 *db, const char *zSql){
  char *zErr = 0;
  int rc;
  nReply = 0;
  rc = sqlite3_exec(db, zSql, execCallback, 0, &zErr);
  if( zErr ){
    fprintf(stderr, "SQL error: %s\n", zErr);
    exit(1);
  }
  if( rc ){
    fprintf(stderr, "SQL error: %s\n", sqlite3_errmsg(db));
    exit(1);
  }
}
