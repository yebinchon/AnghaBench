
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int sqlite3_exec (int *,char const*,int ,int ,char**) ;
 int stderr ;

__attribute__((used)) static void runSql(sqlite3 *db, const char *zSql){
  int rc;
  char *zErr = 0;
  rc = sqlite3_exec(db, zSql, 0, 0, &zErr);
  if( rc || zErr ){
    fprintf(stderr, "SQL failed: rc=%d zErr=[%s]\n", rc, zErr);
    fprintf(stderr, "SQL: [%s]\n", zSql);
    exit(1);
  }
}
