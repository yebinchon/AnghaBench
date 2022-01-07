
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite ;


 int SQLITE_BUSY ;
 int SQLITE_OK ;
 scalar_t__ all_stop ;
 int check_callback ;
 int fprintf (int ,char*,int,int) ;
 int sqlite3_exec (int *,char*,int ,int ,int ) ;
 int stderr ;

int integrity_check(sqlite *db, int id){
  int rc;
  if( all_stop ) return 0;

  rc = sqlite3_exec(db, "pragma integrity_check", check_callback, 0, 0);
  if( rc!=SQLITE_OK && rc!=SQLITE_BUSY ){
    fprintf(stderr,"%d, Integrity check returns %d\n", id, rc);
  }
  if( all_stop ){
    sqlite3_exec(db, "pragma integrity_check", check_callback, 0, 0);
  }
  return 0;
}
