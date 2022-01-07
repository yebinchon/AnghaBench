
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* pCsr; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_7__ {int iCell; } ;
struct TYPE_6__ {int nPtr; TYPE_3__* aPtr; scalar_t__ pBtCsr; struct TYPE_6__* pNext; } ;
typedef TYPE_2__ MultiCursor ;


 int btreeCursorLoadKey (scalar_t__) ;
 int segmentPtrLoadCell (TYPE_3__*,int ) ;

void lsmSortedRemap(lsm_db *pDb){
  MultiCursor *pCsr;
  for(pCsr=pDb->pCsr; pCsr; pCsr=pCsr->pNext){
    int iPtr;
    if( pCsr->pBtCsr ){
      btreeCursorLoadKey(pCsr->pBtCsr);
    }
    for(iPtr=0; iPtr<pCsr->nPtr; iPtr++){
      segmentPtrLoadCell(&pCsr->aPtr[iPtr], pCsr->aPtr[iPtr].iCell);
    }
  }
}
