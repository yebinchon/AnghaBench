
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bTotalsValid; int aTotalSize; int nTotalRow; int pIndex; } ;
typedef TYPE_1__ Fts5Storage ;


 int SQLITE_OK ;
 int sqlite3Fts5IndexGetAverages (int ,int *,int ) ;

__attribute__((used)) static int fts5StorageLoadTotals(Fts5Storage *p, int bCache){
  int rc = SQLITE_OK;
  if( p->bTotalsValid==0 ){
    rc = sqlite3Fts5IndexGetAverages(p->pIndex, &p->nTotalRow, p->aTotalSize);
    p->bTotalsValid = bCache;
  }
  return rc;
}
