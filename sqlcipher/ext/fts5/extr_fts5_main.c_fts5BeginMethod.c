
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;
typedef int Fts5FullTable ;


 int FTS5_BEGIN ;
 int SQLITE_OK ;
 int fts5CheckTransactionState (int *,int ,int ) ;
 int fts5NewTransaction (int *) ;

__attribute__((used)) static int fts5BeginMethod(sqlite3_vtab *pVtab){
  fts5CheckTransactionState((Fts5FullTable*)pVtab, FTS5_BEGIN, 0);
  fts5NewTransaction((Fts5FullTable*)pVtab);
  return SQLITE_OK;
}
