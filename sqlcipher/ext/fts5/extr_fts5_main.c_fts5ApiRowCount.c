
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_4__ {scalar_t__ pVtab; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
struct TYPE_5__ {int pStorage; } ;
typedef TYPE_2__ Fts5FullTable ;
typedef TYPE_3__ Fts5Cursor ;
typedef int Fts5Context ;


 int sqlite3Fts5StorageRowCount (int ,int *) ;

__attribute__((used)) static int fts5ApiRowCount(Fts5Context *pCtx, i64 *pnRow){
  Fts5Cursor *pCsr = (Fts5Cursor*)pCtx;
  Fts5FullTable *pTab = (Fts5FullTable*)(pCsr->base.pVtab);
  return sqlite3Fts5StorageRowCount(pTab->pStorage, pnRow);
}
