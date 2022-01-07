
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_7__ {int * pVtab; } ;
struct TYPE_9__ {TYPE_2__ base; struct TYPE_9__* pNext; } ;
struct TYPE_8__ {int pStorage; TYPE_1__* pGlobal; } ;
struct TYPE_6__ {TYPE_4__* pCsr; } ;
typedef TYPE_3__ Fts5FullTable ;
typedef TYPE_4__ Fts5Cursor ;


 int SQLITE_OK ;
 int sqlite3Fts5StorageReset (int ) ;

__attribute__((used)) static int fts5NewTransaction(Fts5FullTable *pTab){
  Fts5Cursor *pCsr;
  for(pCsr=pTab->pGlobal->pCsr; pCsr; pCsr=pCsr->pNext){
    if( pCsr->base.pVtab==(sqlite3_vtab*)pTab ) return SQLITE_OK;
  }
  return sqlite3Fts5StorageReset(pTab->pStorage);
}
