
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int i64 ;
struct TYPE_6__ {TYPE_1__* pConfig; } ;
struct TYPE_5__ {int db; scalar_t__ bColumnsize; } ;
typedef TYPE_2__ Fts5Storage ;


 int FTS5_STMT_REPLACE_DOCSIZE ;
 int SQLITE_MISMATCH ;
 int SQLITE_OK ;
 int fts5StorageGetStmt (TYPE_2__*,int ,int **,int ) ;
 int sqlite3_bind_null (int *,int) ;
 int sqlite3_last_insert_rowid (int ) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int fts5StorageNewRowid(Fts5Storage *p, i64 *piRowid){
  int rc = SQLITE_MISMATCH;
  if( p->pConfig->bColumnsize ){
    sqlite3_stmt *pReplace = 0;
    rc = fts5StorageGetStmt(p, FTS5_STMT_REPLACE_DOCSIZE, &pReplace, 0);
    if( rc==SQLITE_OK ){
      sqlite3_bind_null(pReplace, 1);
      sqlite3_bind_null(pReplace, 2);
      sqlite3_step(pReplace);
      rc = sqlite3_reset(pReplace);
    }
    if( rc==SQLITE_OK ){
      *piRowid = sqlite3_last_insert_rowid(p->pConfig->db);
    }
  }
  return rc;
}
