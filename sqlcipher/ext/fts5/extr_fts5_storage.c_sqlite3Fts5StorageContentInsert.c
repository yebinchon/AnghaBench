
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
typedef int i64 ;
struct TYPE_7__ {scalar_t__ eContent; int nCol; int db; } ;
struct TYPE_6__ {TYPE_2__* pConfig; } ;
typedef TYPE_1__ Fts5Storage ;
typedef TYPE_2__ Fts5Config ;


 scalar_t__ FTS5_CONTENT_NORMAL ;
 int FTS5_STMT_INSERT_CONTENT ;
 scalar_t__ SQLITE_INTEGER ;
 int SQLITE_OK ;
 int fts5StorageGetStmt (TYPE_1__*,int ,int **,int ) ;
 int fts5StorageNewRowid (TYPE_1__*,int *) ;
 int sqlite3_bind_value (int *,int,int *) ;
 int sqlite3_last_insert_rowid (int ) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;
 int sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

int sqlite3Fts5StorageContentInsert(
  Fts5Storage *p,
  sqlite3_value **apVal,
  i64 *piRowid
){
  Fts5Config *pConfig = p->pConfig;
  int rc = SQLITE_OK;


  if( pConfig->eContent!=FTS5_CONTENT_NORMAL ){
    if( sqlite3_value_type(apVal[1])==SQLITE_INTEGER ){
      *piRowid = sqlite3_value_int64(apVal[1]);
    }else{
      rc = fts5StorageNewRowid(p, piRowid);
    }
  }else{
    sqlite3_stmt *pInsert = 0;
    int i;
    rc = fts5StorageGetStmt(p, FTS5_STMT_INSERT_CONTENT, &pInsert, 0);
    for(i=1; rc==SQLITE_OK && i<=pConfig->nCol+1; i++){
      rc = sqlite3_bind_value(pInsert, i, apVal[i]);
    }
    if( rc==SQLITE_OK ){
      sqlite3_step(pInsert);
      rc = sqlite3_reset(pInsert);
    }
    *piRowid = sqlite3_last_insert_rowid(pConfig->db);
  }

  return rc;
}
