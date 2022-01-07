
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


typedef int u8 ;
struct TYPE_17__ {int iCell; int iPg; } ;
struct TYPE_23__ {int nInput; int iOutputOff; TYPE_15__ splitkey; TYPE_15__* aInput; } ;
struct TYPE_22__ {TYPE_4__* pCsr; scalar_t__ aGobble; TYPE_2__* pDb; scalar_t__ pPage; TYPE_1__* pLevel; } ;
struct TYPE_21__ {scalar_t__ pBtCsr; int nPtr; int* aTree; TYPE_3__* aPtr; } ;
struct TYPE_20__ {int iCell; scalar_t__ pPg; } ;
struct TYPE_19__ {int pEnv; int pFS; } ;
struct TYPE_18__ {scalar_t__ nRight; TYPE_6__* pMerge; } ;
typedef TYPE_3__ SegmentPtr ;
typedef TYPE_4__ MultiCursor ;
typedef TYPE_5__ MergeWorker ;
typedef TYPE_6__ Merge ;


 int CURSOR_DATA_SEGMENT ;
 int LSM_OK ;
 int SEGMENT_EOF (int,int ) ;
 int assert (int) ;
 int btreeCursorPosition (scalar_t__,TYPE_15__*) ;
 int btreeCursorSplitkey (scalar_t__,TYPE_15__*) ;
 int * fsPageData (scalar_t__,int*) ;
 int lsmFree (int ,scalar_t__) ;
 int lsmFsFlushWaiting (int ,int*) ;
 int lsmFsPageNumber (scalar_t__) ;
 int lsmMCursorClose (TYPE_4__*,int ) ;
 scalar_t__ lsmMCursorValid (TYPE_4__*) ;
 int memset (int *,int ,int) ;
 int mergeWorkerAddPadding (TYPE_5__*) ;
 int mergeWorkerBtreeIndirect (TYPE_5__*) ;
 int mergeWorkerFinishHierarchy (TYPE_5__*) ;
 int mergeWorkerPersistAndRelease (TYPE_5__*) ;
 int mergeWorkerReleaseAll (TYPE_5__*) ;
 int pageGetNRec (int *,int) ;

__attribute__((used)) static void mergeWorkerShutdown(MergeWorker *pMW, int *pRc){
  int i;
  int rc = *pRc;
  MultiCursor *pCsr = pMW->pCsr;




  if( rc==LSM_OK && pCsr ){
    Merge *pMerge = pMW->pLevel->pMerge;
    if( lsmMCursorValid(pCsr) ){
      int bBtree = (pCsr->pBtCsr!=0);
      int iPtr;


      assert( pMerge->nInput==0 || pMW->pLevel->nRight>0 );
      assert( pMerge->nInput==0 || pMerge->nInput==(pCsr->nPtr+bBtree) );

      for(i=0; i<(pMerge->nInput-bBtree); i++){
        SegmentPtr *pPtr = &pCsr->aPtr[i];
        if( pPtr->pPg ){
          pMerge->aInput[i].iPg = lsmFsPageNumber(pPtr->pPg);
          pMerge->aInput[i].iCell = pPtr->iCell;
        }else{
          pMerge->aInput[i].iPg = 0;
          pMerge->aInput[i].iCell = 0;
        }
      }
      if( bBtree && pMerge->nInput ){
        assert( i==pCsr->nPtr );
        btreeCursorPosition(pCsr->pBtCsr, &pMerge->aInput[i]);
      }


      iPtr = pCsr->aTree[1] - CURSOR_DATA_SEGMENT;
      if( iPtr<pCsr->nPtr ){
        pMerge->splitkey = pMerge->aInput[iPtr];
      }else{
        btreeCursorSplitkey(pCsr->pBtCsr, &pMerge->splitkey);
      }
    }




    if( pMW->pPage ){
      int nData;
      u8 *aData = fsPageData(pMW->pPage, &nData);
      int iOff = pMerge->iOutputOff;
      int iEof = SEGMENT_EOF(nData, pageGetNRec(aData, nData));
      memset(&aData[iOff], 0, iEof - iOff);
    }

    pMerge->iOutputOff = -1;
  }

  lsmMCursorClose(pCsr, 0);


  if( rc==LSM_OK ) rc = mergeWorkerPersistAndRelease(pMW);
  if( rc==LSM_OK ) rc = mergeWorkerBtreeIndirect(pMW);
  if( rc==LSM_OK ) rc = mergeWorkerFinishHierarchy(pMW);
  if( rc==LSM_OK ) rc = mergeWorkerAddPadding(pMW);
  lsmFsFlushWaiting(pMW->pDb->pFS, &rc);
  mergeWorkerReleaseAll(pMW);

  lsmFree(pMW->pDb->pEnv, pMW->aGobble);
  pMW->aGobble = 0;
  pMW->pCsr = 0;

  *pRc = rc;
}
