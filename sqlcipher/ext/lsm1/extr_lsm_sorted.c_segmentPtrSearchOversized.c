
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {TYPE_1__* pDb; } ;
struct TYPE_8__ {int flags; int pSeg; int * pPg; int blob1; scalar_t__ nCell; } ;
struct TYPE_7__ {int (* xCmp ) (void*,int,void*,int) ;} ;
typedef TYPE_2__ SegmentPtr ;
typedef int Page ;
typedef TYPE_3__ MultiCursor ;


 int LSM_OK ;
 int PGFTR_SKIP_NEXT_FLAG ;
 int PGFTR_SKIP_THIS_FLAG ;
 int SEGMENT_BTREE_FLAG ;
 int assert (int) ;
 int lsmFsDbPageNext (int ,int *,int,int **) ;
 int * lsmFsPageData (int *,int*) ;
 int lsmFsPageRef (int *) ;
 int lsmFsPageRelease (int *) ;
 int pageGetFlags (int *,int) ;
 int * pageGetKey (int ,int *,scalar_t__,int*,int*,int *) ;
 scalar_t__ pageGetNRec (int *,int) ;
 int segmentPtrSetPage (TYPE_2__*,int *) ;
 int sortedKeyCompare (int (*) (void*,int,void*,int),int,int *,int,int,void*,int) ;

__attribute__((used)) static int segmentPtrSearchOversized(
  MultiCursor *pCsr,
  SegmentPtr *pPtr,
  int iTopic,
  void *pKey, int nKey
){
  int (*xCmp)(void *, int, void *, int) = pCsr->pDb->xCmp;
  int rc = LSM_OK;







  while( rc==LSM_OK && (pPtr->flags & PGFTR_SKIP_NEXT_FLAG) ){
    u8 *pLastKey;
    int nLastKey;
    int iLastTopic;
    int res;
    Page *pNext;


    pLastKey = pageGetKey(pPtr->pSeg,
        pPtr->pPg, pPtr->nCell-1, &iLastTopic, &nLastKey, &pPtr->blob1
    );




    res = sortedKeyCompare(
        xCmp, iLastTopic, pLastKey, nLastKey, iTopic, pKey, nKey
    );
    if( res>=0 ) break;


    pNext = pPtr->pPg;
    lsmFsPageRef(pNext);
    while( 1 ){
      Page *pLoad;
      u8 *aData; int nData;

      rc = lsmFsDbPageNext(pPtr->pSeg, pNext, 1, &pLoad);
      lsmFsPageRelease(pNext);
      pNext = pLoad;
      if( pNext==0 ) break;

      assert( rc==LSM_OK );
      aData = lsmFsPageData(pNext, &nData);
      if( (pageGetFlags(aData, nData) & SEGMENT_BTREE_FLAG)==0
       && pageGetNRec(aData, nData)>0
      ){
        break;
      }
    }
    if( pNext==0 ) break;
    segmentPtrSetPage(pPtr, pNext);


    assert( rc!=LSM_OK || (pPtr->flags & PGFTR_SKIP_THIS_FLAG) );
  }

  return rc;
}
