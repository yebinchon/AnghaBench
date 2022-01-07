
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_3__ {int bWal; int db; } ;
typedef TYPE_1__ Superlock ;


 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare (int ,char*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;
 scalar_t__ sqlite3_strnicmp (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int superlockIsWal(Superlock *pLock){
  int rc;
  sqlite3_stmt *pStmt;

  rc = sqlite3_prepare(pLock->db, "PRAGMA main.journal_mode", -1, &pStmt, 0);
  if( rc!=SQLITE_OK ) return rc;

  pLock->bWal = 0;
  if( SQLITE_ROW==sqlite3_step(pStmt) ){
    const char *zMode = (const char *)sqlite3_column_text(pStmt, 0);
    if( zMode && strlen(zMode)==3 && sqlite3_strnicmp("wal", zMode, 3)==0 ){
      pLock->bWal = 1;
    }
  }

  return sqlite3_finalize(pStmt);
}
