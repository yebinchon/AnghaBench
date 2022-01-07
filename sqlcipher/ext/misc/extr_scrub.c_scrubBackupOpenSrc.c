
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_7__ {scalar_t__ pMethods; } ;
struct TYPE_6__ {scalar_t__ rcErr; TYPE_2__* pSrc; int dbSrc; void* nPage; void* szPage; int zSrcFile; } ;
typedef TYPE_1__ ScrubState ;


 int SQLITE_CHECKPOINT_FULL ;
 scalar_t__ SQLITE_ERROR ;
 int SQLITE_FCNTL_FILE_POINTER ;
 int SQLITE_OPEN_PRIVATECACHE ;
 int SQLITE_OPEN_READWRITE ;
 int SQLITE_OPEN_URI ;
 int SQLITE_ROW ;
 int scrubBackupErr (TYPE_1__*,char*,...) ;
 int * scrubBackupPrepare (TYPE_1__*,int ,char*) ;
 void* sqlite3_column_int (int *,int ) ;
 int sqlite3_errmsg (int ) ;
 scalar_t__ sqlite3_exec (int ,char*,int ,int ,int ) ;
 int sqlite3_file_control (int ,char*,int ,TYPE_2__**) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_open_v2 (int ,int *,int,int ) ;
 int sqlite3_step (int *) ;
 int sqlite3_wal_checkpoint_v2 (int ,char*,int ,int ,int ) ;

__attribute__((used)) static void scrubBackupOpenSrc(ScrubState *p){
  sqlite3_stmt *pStmt;
  int rc;

  p->rcErr = sqlite3_open_v2(p->zSrcFile, &p->dbSrc,
                 SQLITE_OPEN_READWRITE |
                 SQLITE_OPEN_URI | SQLITE_OPEN_PRIVATECACHE, 0);
  if( p->rcErr ){
    scrubBackupErr(p, "cannot open source database: %s",
                      sqlite3_errmsg(p->dbSrc));
    return;
  }
  p->rcErr = sqlite3_exec(p->dbSrc, "SELECT 1 FROM sqlite_master; BEGIN;",
                          0, 0, 0);
  if( p->rcErr ){
    scrubBackupErr(p,
       "cannot start a read transaction on the source database: %s",
       sqlite3_errmsg(p->dbSrc));
    return;
  }
  rc = sqlite3_wal_checkpoint_v2(p->dbSrc, "main", SQLITE_CHECKPOINT_FULL,
                                 0, 0);
  if( rc ){
    scrubBackupErr(p, "cannot checkpoint the source database");
    return;
  }
  pStmt = scrubBackupPrepare(p, p->dbSrc, "PRAGMA page_size");
  if( pStmt==0 ) return;
  rc = sqlite3_step(pStmt);
  if( rc==SQLITE_ROW ){
    p->szPage = sqlite3_column_int(pStmt, 0);
  }else{
    scrubBackupErr(p, "unable to determine the page size");
  }
  sqlite3_finalize(pStmt);
  if( p->rcErr ) return;
  pStmt = scrubBackupPrepare(p, p->dbSrc, "PRAGMA page_count");
  if( pStmt==0 ) return;
  rc = sqlite3_step(pStmt);
  if( rc==SQLITE_ROW ){
    p->nPage = sqlite3_column_int(pStmt, 0);
  }else{
    scrubBackupErr(p, "unable to determine the size of the source database");
  }
  sqlite3_finalize(pStmt);
  sqlite3_file_control(p->dbSrc, "main", SQLITE_FCNTL_FILE_POINTER, &p->pSrc);
  if( p->pSrc==0 || p->pSrc->pMethods==0 ){
    scrubBackupErr(p, "cannot get the source file handle");
    p->rcErr = SQLITE_ERROR;
  }
}
