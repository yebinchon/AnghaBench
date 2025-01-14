
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nAlloc; } ;
struct TYPE_4__ {TYPE_2__ blob2; TYPE_2__ blob1; scalar_t__ iCell; scalar_t__ eType; scalar_t__ nVal; scalar_t__ pVal; scalar_t__ nKey; scalar_t__ pKey; scalar_t__ nCell; scalar_t__ pPg; } ;
typedef TYPE_1__ SegmentPtr ;


 int lsmFsPageRelease (scalar_t__) ;
 int sortedBlobFree (TYPE_2__*) ;

__attribute__((used)) static void segmentPtrReset(SegmentPtr *pPtr, int nThreshold){
  lsmFsPageRelease(pPtr->pPg);
  pPtr->pPg = 0;
  pPtr->nCell = 0;
  pPtr->pKey = 0;
  pPtr->nKey = 0;
  pPtr->pVal = 0;
  pPtr->nVal = 0;
  pPtr->eType = 0;
  pPtr->iCell = 0;
  if( pPtr->blob1.nAlloc>=nThreshold ) sortedBlobFree(&pPtr->blob1);
  if( pPtr->blob2.nAlloc>=nThreshold ) sortedBlobFree(&pPtr->blob2);
}
