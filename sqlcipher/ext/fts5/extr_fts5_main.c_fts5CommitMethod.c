
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;
typedef int Fts5FullTable ;


 int FTS5_COMMIT ;
 int SQLITE_OK ;
 int UNUSED_PARAM (int *) ;
 int fts5CheckTransactionState (int *,int ,int ) ;

__attribute__((used)) static int fts5CommitMethod(sqlite3_vtab *pVtab){
  UNUSED_PARAM(pVtab);
  fts5CheckTransactionState((Fts5FullTable*)pVtab, FTS5_COMMIT, 0);
  return SQLITE_OK;
}
