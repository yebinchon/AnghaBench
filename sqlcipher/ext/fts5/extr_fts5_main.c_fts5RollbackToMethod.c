
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_4__ {int pStorage; } ;
typedef TYPE_1__ Fts5FullTable ;


 int FTS5_ROLLBACKTO ;
 int UNUSED_PARAM (int) ;
 int fts5CheckTransactionState (TYPE_1__*,int ,int) ;
 int fts5TripCursors (TYPE_1__*) ;
 int sqlite3Fts5StorageRollback (int ) ;

__attribute__((used)) static int fts5RollbackToMethod(sqlite3_vtab *pVtab, int iSavepoint){
  Fts5FullTable *pTab = (Fts5FullTable*)pVtab;
  UNUSED_PARAM(iSavepoint);
  fts5CheckTransactionState(pTab, FTS5_ROLLBACKTO, iSavepoint);
  fts5TripCursors(pTab);
  return sqlite3Fts5StorageRollback(pTab->pStorage);
}
