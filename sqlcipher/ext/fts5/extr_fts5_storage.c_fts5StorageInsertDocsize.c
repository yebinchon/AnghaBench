
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int i64 ;
struct TYPE_9__ {int n; int p; } ;
struct TYPE_8__ {TYPE_1__* pConfig; } ;
struct TYPE_7__ {scalar_t__ bColumnsize; } ;
typedef TYPE_2__ Fts5Storage ;
typedef TYPE_3__ Fts5Buffer ;


 int FTS5_STMT_REPLACE_DOCSIZE ;
 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int fts5StorageGetStmt (TYPE_2__*,int ,int **,int ) ;
 int sqlite3_bind_blob (int *,int,int ,int ,int ) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_bind_null (int *,int) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int fts5StorageInsertDocsize(
  Fts5Storage *p,
  i64 iRowid,
  Fts5Buffer *pBuf
){
  int rc = SQLITE_OK;
  if( p->pConfig->bColumnsize ){
    sqlite3_stmt *pReplace = 0;
    rc = fts5StorageGetStmt(p, FTS5_STMT_REPLACE_DOCSIZE, &pReplace, 0);
    if( rc==SQLITE_OK ){
      sqlite3_bind_int64(pReplace, 1, iRowid);
      sqlite3_bind_blob(pReplace, 2, pBuf->p, pBuf->n, SQLITE_STATIC);
      sqlite3_step(pReplace);
      rc = sqlite3_reset(pReplace);
      sqlite3_bind_null(pReplace, 2);
    }
  }
  return rc;
}
