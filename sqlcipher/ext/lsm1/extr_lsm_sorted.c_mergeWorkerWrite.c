
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_19__ {int iOutputOff; scalar_t__ nSkip; } ;
struct TYPE_18__ {TYPE_4__* pDb; TYPE_3__* aSave; int * pPage; TYPE_2__* pCsr; TYPE_1__* pLevel; } ;
struct TYPE_17__ {scalar_t__ iFirst; } ;
struct TYPE_16__ {int pFS; } ;
struct TYPE_15__ {int bStore; } ;
struct TYPE_14__ {scalar_t__* pPrevMergePtr; } ;
struct TYPE_13__ {TYPE_5__ lhs; TYPE_7__* pMerge; } ;
typedef TYPE_5__ Segment ;
typedef int Page ;
typedef TYPE_6__ MergeWorker ;
typedef TYPE_7__ Merge ;


 int LSM_OK ;
 int PGFTR_SKIP_NEXT_FLAG ;
 int PGFTR_SKIP_THIS_FLAG ;
 size_t SEGMENT_CELLPTR_OFFSET (int,int) ;
 int SEGMENT_EOF (int,int) ;
 size_t SEGMENT_FLAGS_OFFSET (int) ;
 size_t SEGMENT_NRECORD_OFFSET (int) ;
 int assert (int) ;
 scalar_t__* fsPageData (int *,int*) ;
 scalar_t__ keyszToSkip (int ,int) ;
 int lsmPutU16 (scalar_t__*,int ) ;
 int lsmVarintLen32 (int) ;
 scalar_t__ lsmVarintPut32 (scalar_t__*,int) ;
 int memset (scalar_t__*,int ,int) ;
 int mergeWorkerData (TYPE_6__*,int ,int,void*,int) ;
 int mergeWorkerFirstPage (TYPE_6__*) ;
 int mergeWorkerNextPage (TYPE_6__*,int) ;
 int mergeWorkerPushHierarchy (TYPE_6__*,int ,void*,int) ;
 int pageGetNRec (scalar_t__*,int) ;
 int pageGetPtr (scalar_t__*,int) ;
 scalar_t__ rtIsWrite (int) ;
 int rtTopic (int) ;

__attribute__((used)) static int mergeWorkerWrite(
  MergeWorker *pMW,
  int eType,
  void *pKey, int nKey,
  void *pVal, int nVal,
  int iPtr
){
  int rc = LSM_OK;
  Merge *pMerge;
  int nHdr;
  Page *pPg;
  u8 *aData;
  int nData = 0;
  int nRec = 0;
  int iFPtr = 0;
  int iRPtr = 0;
  int iOff = 0;
  Segment *pSeg;
  int flags = 0;
  int bFirst = 0;

  pMerge = pMW->pLevel->pMerge;
  pSeg = &pMW->pLevel->lhs;

  if( pSeg->iFirst==0 && pMW->pPage==0 ){
    rc = mergeWorkerFirstPage(pMW);
    bFirst = 1;
  }
  pPg = pMW->pPage;
  if( pPg ){
    aData = fsPageData(pPg, &nData);
    nRec = pageGetNRec(aData, nData);
    iFPtr = (int)pageGetPtr(aData, nData);
    iRPtr = iPtr - iFPtr;
  }
  if( rc==LSM_OK ){
    nHdr = 1 + lsmVarintLen32(iRPtr) + lsmVarintLen32(nKey);
    if( rtIsWrite(eType) ) nHdr += lsmVarintLen32(nVal);



    iOff = pMerge->iOutputOff;
    if( iOff<0 || pPg==0 || iOff+nHdr > SEGMENT_EOF(nData, nRec+1) ){
      if( iOff>=0 && pPg ){

        assert( aData );
        memset(&aData[iOff], 0, SEGMENT_EOF(nData, nRec)-iOff);
      }
      iFPtr = (int)*pMW->pCsr->pPrevMergePtr;
      iRPtr = iPtr - iFPtr;
      iOff = 0;
      nRec = 0;
      rc = mergeWorkerNextPage(pMW, iFPtr);
      pPg = pMW->pPage;
    }
  }





  if( rc==LSM_OK && nRec==0 && bFirst==0 ){
    assert( pMerge->nSkip>=0 );

    if( pMerge->nSkip==0 ){
      rc = mergeWorkerPushHierarchy(pMW, rtTopic(eType), pKey, nKey);
      assert( pMW->aSave[0].bStore==0 );
      pMW->aSave[0].bStore = 1;
      pMerge->nSkip = keyszToSkip(pMW->pDb->pFS, nKey);
    }else{
      pMerge->nSkip--;
      flags = PGFTR_SKIP_THIS_FLAG;
    }

    if( pMerge->nSkip ) flags |= PGFTR_SKIP_NEXT_FLAG;
  }


  if( rc==LSM_OK ){
    aData = fsPageData(pPg, &nData);


    lsmPutU16(&aData[SEGMENT_NRECORD_OFFSET(nData)], (u16)(nRec+1));
    lsmPutU16(&aData[SEGMENT_CELLPTR_OFFSET(nData, nRec)], (u16)iOff);
    if( flags ) lsmPutU16(&aData[SEGMENT_FLAGS_OFFSET(nData)], (u16)flags);


    aData[iOff++] = (u8)eType;
    iOff += lsmVarintPut32(&aData[iOff], iRPtr);
    iOff += lsmVarintPut32(&aData[iOff], nKey);
    if( rtIsWrite(eType) ) iOff += lsmVarintPut32(&aData[iOff], nVal);
    pMerge->iOutputOff = iOff;


    assert( iFPtr==pageGetPtr(aData, nData) );
    rc = mergeWorkerData(pMW, 0, iFPtr+iRPtr, pKey, nKey);
    if( rc==LSM_OK && rtIsWrite(eType) ){
      if( rc==LSM_OK ){
        rc = mergeWorkerData(pMW, 0, iFPtr+iRPtr, pVal, nVal);
      }
    }
  }

  return rc;
}
