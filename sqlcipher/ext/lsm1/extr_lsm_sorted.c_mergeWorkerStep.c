
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int (* xCmp ) (scalar_t__,int ,void*,int) ;int pEnv; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_19__ {void* pData; } ;
struct TYPE_18__ {int eType; scalar_t__ iPtr; int nKey; scalar_t__ pKey; } ;
struct TYPE_17__ {TYPE_3__* pCsr; int * aGobble; TYPE_1__* pDb; } ;
struct TYPE_16__ {int eType; int nPtr; int* aTree; TYPE_6__ val; TYPE_2__* aPtr; TYPE_5__* pBtCsr; scalar_t__* pPrevMergePtr; } ;
struct TYPE_15__ {int flags; scalar_t__ pPg; scalar_t__ iPgPtr; scalar_t__ iPtr; int nKey; scalar_t__ pKey; } ;
typedef TYPE_2__ SegmentPtr ;
typedef TYPE_3__ MultiCursor ;
typedef TYPE_4__ MergeWorker ;
typedef scalar_t__ LsmPgno ;
typedef TYPE_5__ BtreeCursor ;


 int CURSOR_DATA_SEGMENT ;
 int LSM_OK ;
 int PGFTR_SKIP_THIS_FLAG ;
 int assert (int) ;
 int lsmFsPageNumber (scalar_t__) ;
 int lsmMCursorKey (TYPE_3__*,void**,int*) ;
 int lsmMCursorNext (TYPE_3__*) ;
 int lsmMCursorValid (TYPE_3__*) ;
 int mergeRangeDeletes (TYPE_3__*,int*,int*) ;
 int mergeWorkerWrite (TYPE_4__*,int,void*,int,void*,int,int) ;
 int multiCursorGetVal (TYPE_3__*,int,void**,int*) ;
 scalar_t__ rtIsSeparator (int) ;
 int rtTopic (int) ;
 int sortedBlobSet (int ,TYPE_6__*,void*,int) ;
 int stub1 (scalar_t__,int ,void*,int) ;
 scalar_t__ stub2 (scalar_t__,int ,void*,int) ;

__attribute__((used)) static int mergeWorkerStep(MergeWorker *pMW){
  lsm_db *pDb = pMW->pDb;
  MultiCursor *pCsr;
  int rc = LSM_OK;
  int eType;
  void *pKey; int nKey;
  LsmPgno iPtr;
  int iVal;

  pCsr = pMW->pCsr;


  lsmMCursorKey(pCsr, &pKey, &nKey);
  eType = pCsr->eType;







  iPtr = (pCsr->pPrevMergePtr ? *pCsr->pPrevMergePtr : 0);
  if( pCsr->pBtCsr ){
    BtreeCursor *pBtCsr = pCsr->pBtCsr;
    if( pBtCsr->pKey ){
      int res = rtTopic(pBtCsr->eType) - rtTopic(eType);
      if( res==0 ) res = pDb->xCmp(pBtCsr->pKey, pBtCsr->nKey, pKey, nKey);
      if( 0==res ) iPtr = pBtCsr->iPtr;
      assert( res>=0 );
    }
  }else if( pCsr->nPtr ){
    SegmentPtr *pPtr = &pCsr->aPtr[pCsr->nPtr-1];
    if( pPtr->pPg
     && 0==pDb->xCmp(pPtr->pKey, pPtr->nKey, pKey, nKey)
    ){
      iPtr = pPtr->iPtr+pPtr->iPgPtr;
    }
  }

  iVal = pCsr->aTree[1];
  mergeRangeDeletes(pCsr, &iVal, &eType);

  if( eType!=0 ){
    if( pMW->aGobble ){
      int iGobble = pCsr->aTree[1] - CURSOR_DATA_SEGMENT;
      if( iGobble<pCsr->nPtr && iGobble>=0 ){
        SegmentPtr *pGobble = &pCsr->aPtr[iGobble];
        if( (pGobble->flags & PGFTR_SKIP_THIS_FLAG)==0 ){
          pMW->aGobble[iGobble] = lsmFsPageNumber(pGobble->pPg);
        }
      }
    }




    if( rc==LSM_OK && (rtIsSeparator(eType)==0 || iPtr!=0) ){

      void *pVal; int nVal;
      rc = multiCursorGetVal(pCsr, iVal, &pVal, &nVal);
      if( pVal && rc==LSM_OK ){
        assert( nVal>=0 );
        rc = sortedBlobSet(pDb->pEnv, &pCsr->val, pVal, nVal);
        pVal = pCsr->val.pData;
      }
      if( rc==LSM_OK ){
        rc = mergeWorkerWrite(pMW, eType, pKey, nKey, pVal, nVal, (int)iPtr);
      }
    }
  }


  assert( lsmMCursorValid(pMW->pCsr) );
  if( rc==LSM_OK ) rc = lsmMCursorNext(pMW->pCsr);

  return rc;
}
