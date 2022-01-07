
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_7__ {scalar_t__ pMethods; } ;
struct TYPE_6__ {void* rcErr; TYPE_2__* pDest; int dbDest; int szPage; int zDestFile; } ;
typedef TYPE_1__ ScrubState ;


 void* SQLITE_ERROR ;
 int SQLITE_FCNTL_FILE_POINTER ;
 void* SQLITE_NOMEM ;
 int SQLITE_OPEN_CREATE ;
 int SQLITE_OPEN_PRIVATECACHE ;
 int SQLITE_OPEN_READWRITE ;
 int SQLITE_OPEN_URI ;
 int SQLITE_ROW ;
 int scrubBackupErr (TYPE_1__*,char*,...) ;
 int * scrubBackupPrepare (TYPE_1__*,int ,char*) ;
 int sqlite3_column_int (int *,int ) ;
 int sqlite3_errmsg (int ) ;
 void* sqlite3_exec (int ,char*,int ,int ,int ) ;
 int sqlite3_file_control (int ,char*,int ,TYPE_2__**) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int ) ;
 void* sqlite3_open_v2 (int ,int *,int,int ) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static void scrubBackupOpenDest(ScrubState *p){
  sqlite3_stmt *pStmt;
  int rc;
  char *zSql;
  if( p->rcErr ) return;
  p->rcErr = sqlite3_open_v2(p->zDestFile, &p->dbDest,
                 SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE |
                 SQLITE_OPEN_URI | SQLITE_OPEN_PRIVATECACHE, 0);
  if( p->rcErr ){
    scrubBackupErr(p, "cannot open destination database: %s",
                      sqlite3_errmsg(p->dbDest));
    return;
  }
  zSql = sqlite3_mprintf("PRAGMA page_size(%u);", p->szPage);
  if( zSql==0 ){
    p->rcErr = SQLITE_NOMEM;
    return;
  }
  p->rcErr = sqlite3_exec(p->dbDest, zSql, 0, 0, 0);
  sqlite3_free(zSql);
  if( p->rcErr ){
    scrubBackupErr(p,
       "cannot set the page size on the destination database: %s",
       sqlite3_errmsg(p->dbDest));
    return;
  }
  sqlite3_exec(p->dbDest, "PRAGMA journal_mode=OFF;", 0, 0, 0);
  p->rcErr = sqlite3_exec(p->dbDest, "BEGIN EXCLUSIVE;", 0, 0, 0);
  if( p->rcErr ){
    scrubBackupErr(p,
       "cannot start a write transaction on the destination database: %s",
       sqlite3_errmsg(p->dbDest));
    return;
  }
  pStmt = scrubBackupPrepare(p, p->dbDest, "PRAGMA page_count;");
  if( pStmt==0 ) return;
  rc = sqlite3_step(pStmt);
  if( rc!=SQLITE_ROW ){
    scrubBackupErr(p, "cannot measure the size of the destination");
  }else if( sqlite3_column_int(pStmt, 0)>1 ){
    scrubBackupErr(p, "destination database is not empty - holds %d pages",
                   sqlite3_column_int(pStmt, 0));
  }
  sqlite3_finalize(pStmt);
  sqlite3_file_control(p->dbDest, "main", SQLITE_FCNTL_FILE_POINTER, &p->pDest);
  if( p->pDest==0 || p->pDest->pMethods==0 ){
    scrubBackupErr(p, "cannot get the destination file handle");
    p->rcErr = SQLITE_ERROR;
  }
}
