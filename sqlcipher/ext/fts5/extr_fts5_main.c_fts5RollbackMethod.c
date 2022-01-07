
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_3__ {int pStorage; } ;
typedef TYPE_1__ Fts5FullTable ;


 int FTS5_ROLLBACK ;
 int fts5CheckTransactionState (TYPE_1__*,int ,int ) ;
 int sqlite3Fts5StorageRollback (int ) ;

__attribute__((used)) static int fts5RollbackMethod(sqlite3_vtab *pVtab){
  int rc;
  Fts5FullTable *pTab = (Fts5FullTable*)pVtab;
  fts5CheckTransactionState(pTab, FTS5_ROLLBACK, 0);
  rc = sqlite3Fts5StorageRollback(pTab->pStorage);
  return rc;
}
