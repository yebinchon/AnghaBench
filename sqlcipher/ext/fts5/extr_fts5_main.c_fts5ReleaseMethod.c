
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;
typedef int Fts5Table ;
typedef int Fts5FullTable ;


 int FTS5_RELEASE ;
 int UNUSED_PARAM (int) ;
 int fts5CheckTransactionState (int *,int ,int) ;
 int sqlite3Fts5FlushToDisk (int *) ;

__attribute__((used)) static int fts5ReleaseMethod(sqlite3_vtab *pVtab, int iSavepoint){
  UNUSED_PARAM(iSavepoint);
  fts5CheckTransactionState((Fts5FullTable*)pVtab, FTS5_RELEASE, iSavepoint);
  return sqlite3Fts5FlushToDisk((Fts5Table*)pVtab);
}
