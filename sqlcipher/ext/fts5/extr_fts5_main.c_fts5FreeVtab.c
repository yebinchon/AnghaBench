
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pConfig; int pIndex; } ;
struct TYPE_6__ {TYPE_1__ p; int pStorage; } ;
typedef TYPE_2__ Fts5FullTable ;


 int sqlite3Fts5ConfigFree (int ) ;
 int sqlite3Fts5IndexClose (int ) ;
 int sqlite3Fts5StorageClose (int ) ;
 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static void fts5FreeVtab(Fts5FullTable *pTab){
  if( pTab ){
    sqlite3Fts5IndexClose(pTab->p.pIndex);
    sqlite3Fts5StorageClose(pTab->pStorage);
    sqlite3Fts5ConfigFree(pTab->p.pConfig);
    sqlite3_free(pTab);
  }
}
