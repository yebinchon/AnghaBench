#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_17__ {int /*<<< orphan*/  iCell; int /*<<< orphan*/  iPg; } ;
struct TYPE_23__ {int nInput; int iOutputOff; TYPE_15__ splitkey; TYPE_15__* aInput; } ;
struct TYPE_22__ {TYPE_4__* pCsr; scalar_t__ aGobble; TYPE_2__* pDb; scalar_t__ pPage; TYPE_1__* pLevel; } ;
struct TYPE_21__ {scalar_t__ pBtCsr; int nPtr; int* aTree; TYPE_3__* aPtr; } ;
struct TYPE_20__ {int /*<<< orphan*/  iCell; scalar_t__ pPg; } ;
struct TYPE_19__ {int /*<<< orphan*/  pEnv; int /*<<< orphan*/  pFS; } ;
struct TYPE_18__ {scalar_t__ nRight; TYPE_6__* pMerge; } ;
typedef  TYPE_3__ SegmentPtr ;
typedef  TYPE_4__ MultiCursor ;
typedef  TYPE_5__ MergeWorker ;
typedef  TYPE_6__ Merge ;

/* Variables and functions */
 int CURSOR_DATA_SEGMENT ; 
 int LSM_OK ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_15__*) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (TYPE_5__*) ; 
 int FUNC12 (TYPE_5__*) ; 
 int FUNC13 (TYPE_5__*) ; 
 int FUNC14 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC17(MergeWorker *pMW, int *pRc){
  int i;                          /* Iterator variable */
  int rc = *pRc;
  MultiCursor *pCsr = pMW->pCsr;

  /* Unless the merge has finished, save the cursor position in the
  ** Merge.aInput[] array. See function mergeWorkerInit() for the 
  ** code to restore a cursor position based on aInput[].  */
  if( rc==LSM_OK && pCsr ){
    Merge *pMerge = pMW->pLevel->pMerge;
    if( FUNC9(pCsr) ){
      int bBtree = (pCsr->pBtCsr!=0);
      int iPtr;

      /* pMerge->nInput==0 indicates that this is a FlushTree() operation. */
      FUNC1( pMerge->nInput==0 || pMW->pLevel->nRight>0 );
      FUNC1( pMerge->nInput==0 || pMerge->nInput==(pCsr->nPtr+bBtree) );

      for(i=0; i<(pMerge->nInput-bBtree); i++){
        SegmentPtr *pPtr = &pCsr->aPtr[i];
        if( pPtr->pPg ){
          pMerge->aInput[i].iPg = FUNC7(pPtr->pPg);
          pMerge->aInput[i].iCell = pPtr->iCell;
        }else{
          pMerge->aInput[i].iPg = 0;
          pMerge->aInput[i].iCell = 0;
        }
      }
      if( bBtree && pMerge->nInput ){
        FUNC1( i==pCsr->nPtr );
        FUNC2(pCsr->pBtCsr, &pMerge->aInput[i]);
      }

      /* Store the location of the split-key */
      iPtr = pCsr->aTree[1] - CURSOR_DATA_SEGMENT;
      if( iPtr<pCsr->nPtr ){
        pMerge->splitkey = pMerge->aInput[iPtr];
      }else{
        FUNC3(pCsr->pBtCsr, &pMerge->splitkey);
      }
    }

    /* Zero any free space left on the final page. This helps with
    ** compression if using a compression hook. And prevents valgrind
    ** from complaining about uninitialized byte passed to write(). */
    if( pMW->pPage ){
      int nData;
      u8 *aData = FUNC4(pMW->pPage, &nData);
      int iOff = pMerge->iOutputOff;
      int iEof = FUNC0(nData, FUNC16(aData, nData));
      FUNC10(&aData[iOff], 0, iEof - iOff);
    }
    
    pMerge->iOutputOff = -1;
  }

  FUNC8(pCsr, 0);

  /* Persist and release the output page. */
  if( rc==LSM_OK ) rc = FUNC14(pMW);
  if( rc==LSM_OK ) rc = FUNC12(pMW);
  if( rc==LSM_OK ) rc = FUNC13(pMW);
  if( rc==LSM_OK ) rc = FUNC11(pMW);
  FUNC6(pMW->pDb->pFS, &rc);
  FUNC15(pMW);

  FUNC5(pMW->pDb->pEnv, pMW->aGobble);
  pMW->aGobble = 0;
  pMW->pCsr = 0;

  *pRc = rc;
}