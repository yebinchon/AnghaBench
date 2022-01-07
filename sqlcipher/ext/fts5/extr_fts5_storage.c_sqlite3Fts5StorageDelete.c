
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
typedef int i64 ;
struct TYPE_8__ {scalar_t__ eContent; scalar_t__ bColumnsize; } ;
struct TYPE_7__ {TYPE_2__* pConfig; } ;
typedef TYPE_1__ Fts5Storage ;
typedef TYPE_2__ Fts5Config ;


 scalar_t__ FTS5_CONTENT_NORMAL ;
 int FTS5_STMT_DELETE_CONTENT ;
 int FTS5_STMT_DELETE_DOCSIZE ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts5StorageDeleteFromIndex (TYPE_1__*,int ,int **) ;
 int fts5StorageGetStmt (TYPE_1__*,int ,int **,int ) ;
 int fts5StorageLoadTotals (TYPE_1__*,int) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;

int sqlite3Fts5StorageDelete(Fts5Storage *p, i64 iDel, sqlite3_value **apVal){
  Fts5Config *pConfig = p->pConfig;
  int rc;
  sqlite3_stmt *pDel = 0;

  assert( pConfig->eContent!=FTS5_CONTENT_NORMAL || apVal==0 );
  rc = fts5StorageLoadTotals(p, 1);


  if( rc==SQLITE_OK ){
    rc = fts5StorageDeleteFromIndex(p, iDel, apVal);
  }


  if( rc==SQLITE_OK && pConfig->bColumnsize ){
    rc = fts5StorageGetStmt(p, FTS5_STMT_DELETE_DOCSIZE, &pDel, 0);
    if( rc==SQLITE_OK ){
      sqlite3_bind_int64(pDel, 1, iDel);
      sqlite3_step(pDel);
      rc = sqlite3_reset(pDel);
    }
  }


  if( pConfig->eContent==FTS5_CONTENT_NORMAL ){
    if( rc==SQLITE_OK ){
      rc = fts5StorageGetStmt(p, FTS5_STMT_DELETE_CONTENT, &pDel, 0);
    }
    if( rc==SQLITE_OK ){
      sqlite3_bind_int64(pDel, 1, iDel);
      sqlite3_step(pDel);
      rc = sqlite3_reset(pDel);
    }
  }

  return rc;
}
