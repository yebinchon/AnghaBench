
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_2__ {void* iTimeout; int db; scalar_t__ nTest; scalar_t__ nError; } ;


 void* DEFAULT_TIMEOUT ;
 int SQLITE_BUSY ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int errorMessage (char*) ;
 int exit (int) ;
 int fatalError (char*,int ) ;
 TYPE_1__ g ;
 int * prepareSql (char*,int) ;
 int runSql (char*,...) ;
 int sqlite3_close (int ) ;
 int sqlite3_column_bytes (int *,int ) ;
 int sqlite3_column_int (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_errmsg (int ) ;
 int sqlite3_finalize (int *) ;
 char* sqlite3_malloc (int) ;
 char* sqlite3_mprintf (char*,scalar_t__) ;
 int sqlite3_sleep (int) ;
 int sqlite3_step (int *) ;
 int strcpy (char*,char const*) ;
 int trySql (char*) ;

__attribute__((used)) static int startScript(
  int iClient,
  char **pzScript,
  int *pTaskId,
  char **pzTaskName
){
  sqlite3_stmt *pStmt = 0;
  int taskId;
  int rc;
  int totalTime = 0;

  *pzScript = 0;
  g.iTimeout = 0;
  while(1){
    rc = trySql("BEGIN IMMEDIATE");
    if( rc==SQLITE_BUSY ){
      sqlite3_sleep(10);
      totalTime += 10;
      continue;
    }
    if( rc!=SQLITE_OK ){
      fatalError("in startScript: %s", sqlite3_errmsg(g.db));
    }
    if( g.nError || g.nTest ){
      runSql("UPDATE counters SET nError=nError+%d, nTest=nTest+%d",
             g.nError, g.nTest);
      g.nError = 0;
      g.nTest = 0;
    }
    pStmt = prepareSql("SELECT 1 FROM client WHERE id=%d AND wantHalt",iClient);
    rc = sqlite3_step(pStmt);
    sqlite3_finalize(pStmt);
    if( rc==SQLITE_ROW ){
      runSql("DELETE FROM client WHERE id=%d", iClient);
      g.iTimeout = DEFAULT_TIMEOUT;
      runSql("COMMIT TRANSACTION;");
      return SQLITE_DONE;
    }
    pStmt = prepareSql(
              "SELECT script, id, name FROM task"
              " WHERE client=%d AND starttime IS NULL"
              " ORDER BY id LIMIT 1", iClient);
    rc = sqlite3_step(pStmt);
    if( rc==SQLITE_ROW ){
      int n = sqlite3_column_bytes(pStmt, 0);
      *pzScript = sqlite3_malloc(n+1);
      strcpy(*pzScript, (const char*)sqlite3_column_text(pStmt, 0));
      *pTaskId = taskId = sqlite3_column_int(pStmt, 1);
      *pzTaskName = sqlite3_mprintf("%s", sqlite3_column_text(pStmt, 2));
      sqlite3_finalize(pStmt);
      runSql("UPDATE task"
             "   SET starttime=strftime('%%Y-%%m-%%d %%H:%%M:%%f','now')"
             " WHERE id=%d;", taskId);
      g.iTimeout = DEFAULT_TIMEOUT;
      runSql("COMMIT TRANSACTION;");
      return SQLITE_OK;
    }
    sqlite3_finalize(pStmt);
    if( rc==SQLITE_DONE ){
      if( totalTime>30000 ){
        errorMessage("Waited over 30 seconds with no work.  Giving up.");
        runSql("DELETE FROM client WHERE id=%d; COMMIT;", iClient);
        sqlite3_close(g.db);
        exit(1);
      }
      while( trySql("COMMIT")==SQLITE_BUSY ){
        sqlite3_sleep(10);
        totalTime += 10;
      }
      sqlite3_sleep(100);
      totalTime += 100;
      continue;
    }
    fatalError("%s", sqlite3_errmsg(g.db));
  }
  g.iTimeout = DEFAULT_TIMEOUT;
}
