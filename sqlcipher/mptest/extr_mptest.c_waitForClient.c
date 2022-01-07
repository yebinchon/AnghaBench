
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_2__ {scalar_t__ iTimeout; } ;


 scalar_t__ DEFAULT_TIMEOUT ;
 int SQLITE_BUSY ;
 int SQLITE_DONE ;
 int SQLITE_ROW ;
 int errorMessage (char*,char*,...) ;
 TYPE_1__ g ;
 int * prepareSql (char*,...) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_reset (int *) ;
 int sqlite3_sleep (int) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static void waitForClient(int iClient, int iTimeout, char *zErrPrefix){
  sqlite3_stmt *pStmt;
  int rc;
  if( iClient>0 ){
    pStmt = prepareSql(
               "SELECT 1 FROM task"
               " WHERE client=%d"
               "   AND client IN (SELECT id FROM client)"
               "  AND endtime IS NULL",
               iClient);
  }else{
    pStmt = prepareSql(
               "SELECT 1 FROM task"
               " WHERE client IN (SELECT id FROM client)"
               "   AND endtime IS NULL");
  }
  g.iTimeout = 0;
  while( ((rc = sqlite3_step(pStmt))==SQLITE_BUSY || rc==SQLITE_ROW)
    && iTimeout>0
  ){
    sqlite3_reset(pStmt);
    sqlite3_sleep(50);
    iTimeout -= 50;
  }
  sqlite3_finalize(pStmt);
  g.iTimeout = DEFAULT_TIMEOUT;
  if( rc!=SQLITE_DONE ){
    if( zErrPrefix==0 ) zErrPrefix = "";
    if( iClient>0 ){
      errorMessage("%stimeout waiting for client %d", zErrPrefix, iClient);
    }else{
      errorMessage("%stimeout waiting for all clients", zErrPrefix);
    }
  }
}
