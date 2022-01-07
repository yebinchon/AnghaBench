
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int nSplitKey; int pSplitKey; int iSplitTopic; } ;
struct TYPE_14__ {TYPE_1__* pDb; } ;
struct TYPE_13__ {int nKey; int pKey; int eType; scalar_t__ pPg; } ;
struct TYPE_12__ {int xCmp; } ;
typedef TYPE_2__ SegmentPtr ;
typedef TYPE_3__ MultiCursor ;
typedef TYPE_4__ Level ;


 int LSM_OK ;
 int rtTopic (int ) ;
 int segmentPtrAdvance (TYPE_3__*,TYPE_2__*,int ) ;
 int segmentPtrEnd (TYPE_3__*,TYPE_2__*,int ) ;
 int sortedKeyCompare (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int sortedRhsFirst(MultiCursor *pCsr, Level *pLvl, SegmentPtr *pPtr){
  int rc;
  rc = segmentPtrEnd(pCsr, pPtr, 0);
  while( pPtr->pPg && rc==LSM_OK ){
    int res = sortedKeyCompare(pCsr->pDb->xCmp,
        pLvl->iSplitTopic, pLvl->pSplitKey, pLvl->nSplitKey,
        rtTopic(pPtr->eType), pPtr->pKey, pPtr->nKey
    );
    if( res<=0 ) break;
    rc = segmentPtrAdvance(pCsr, pPtr, 0);
  }
  return rc;
}
