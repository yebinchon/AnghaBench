
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_4__ {scalar_t__ nPendingData; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_OK ;
 int SQL_DELETE_SEGDIR_LEVEL ;
 int fts3SqlStmt (TYPE_1__*,int ,int **,int ) ;
 int sqlite3_bind_null (int *,int) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int fts3Writelock(Fts3Table *p){
  int rc = SQLITE_OK;

  if( p->nPendingData==0 ){
    sqlite3_stmt *pStmt;
    rc = fts3SqlStmt(p, SQL_DELETE_SEGDIR_LEVEL, &pStmt, 0);
    if( rc==SQLITE_OK ){
      sqlite3_bind_null(pStmt, 1);
      sqlite3_step(pStmt);
      rc = sqlite3_reset(pStmt);
    }
  }

  return rc;
}
