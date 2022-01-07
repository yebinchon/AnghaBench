
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_6__ {TYPE_1__* pConfig; int pIndex; scalar_t__ bTotalsValid; } ;
struct TYPE_5__ {int db; } ;
typedef TYPE_2__ Fts5Storage ;


 int SQLITE_OK ;
 int fts5StorageSaveTotals (TYPE_2__*) ;
 int sqlite3Fts5IndexSync (int ) ;
 int sqlite3_last_insert_rowid (int ) ;
 int sqlite3_set_last_insert_rowid (int ,int ) ;

int sqlite3Fts5StorageSync(Fts5Storage *p){
  int rc = SQLITE_OK;
  i64 iLastRowid = sqlite3_last_insert_rowid(p->pConfig->db);
  if( p->bTotalsValid ){
    rc = fts5StorageSaveTotals(p);
    p->bTotalsValid = 0;
  }
  if( rc==SQLITE_OK ){
    rc = sqlite3Fts5IndexSync(p->pIndex);
  }
  sqlite3_set_last_insert_rowid(p->pConfig->db, iLastRowid);
  return rc;
}
