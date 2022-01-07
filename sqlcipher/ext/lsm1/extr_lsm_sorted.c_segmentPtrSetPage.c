
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {int * pPg; int iPtr; scalar_t__ flags; int nCell; } ;
typedef TYPE_1__ SegmentPtr ;
typedef int Page ;


 int * fsPageData (int *,int*) ;
 int lsmFsPageRelease (int *) ;
 scalar_t__ pageGetFlags (int *,int) ;
 int pageGetNRec (int *,int) ;
 int pageGetPtr (int *,int) ;

__attribute__((used)) static void segmentPtrSetPage(SegmentPtr *pPtr, Page *pNext){
  lsmFsPageRelease(pPtr->pPg);
  if( pNext ){
    int nData;
    u8 *aData = fsPageData(pNext, &nData);
    pPtr->nCell = pageGetNRec(aData, nData);
    pPtr->flags = (u16)pageGetFlags(aData, nData);
    pPtr->iPtr = pageGetPtr(aData, nData);
  }
  pPtr->pPg = pNext;
}
