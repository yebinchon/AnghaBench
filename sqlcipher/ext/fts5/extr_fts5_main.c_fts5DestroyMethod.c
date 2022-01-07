
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_2__ {int pConfig; } ;
typedef TYPE_1__ Fts5Table ;
typedef int Fts5FullTable ;


 int SQLITE_OK ;
 int fts5FreeVtab (int *) ;
 int sqlite3Fts5DropAll (int ) ;

__attribute__((used)) static int fts5DestroyMethod(sqlite3_vtab *pVtab){
  Fts5Table *pTab = (Fts5Table*)pVtab;
  int rc = sqlite3Fts5DropAll(pTab->pConfig);
  if( rc==SQLITE_OK ){
    fts5FreeVtab((Fts5FullTable*)pVtab);
  }
  return rc;
}
