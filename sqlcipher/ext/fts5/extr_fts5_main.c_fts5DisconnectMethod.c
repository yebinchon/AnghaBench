
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;
typedef int Fts5FullTable ;


 int SQLITE_OK ;
 int fts5FreeVtab (int *) ;

__attribute__((used)) static int fts5DisconnectMethod(sqlite3_vtab *pVtab){
  fts5FreeVtab((Fts5FullTable*)pVtab);
  return SQLITE_OK;
}
