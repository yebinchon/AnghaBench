#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int iSplitTopic; int /*<<< orphan*/  nSplitKey; int /*<<< orphan*/  pSplitKey; scalar_t__ nRight; int /*<<< orphan*/  lhs; } ;
struct TYPE_17__ {TYPE_1__* pDb; } ;
struct TYPE_16__ {scalar_t__ nCell; int flags; int eType; scalar_t__ nVal; scalar_t__ pVal; int /*<<< orphan*/  nKey; int /*<<< orphan*/  pKey; int /*<<< orphan*/  iCell; int /*<<< orphan*/ * pSeg; scalar_t__ pPg; TYPE_4__* pLevel; } ;
struct TYPE_15__ {int /*<<< orphan*/  xCmp; int /*<<< orphan*/ * pFS; } ;
typedef  TYPE_2__ SegmentPtr ;
typedef  TYPE_3__ MultiCursor ;
typedef  TYPE_4__ Level ;
typedef  int /*<<< orphan*/  FileSystem ;

/* Variables and functions */
 int LSM_END_DELETE ; 
 int LSM_OK ; 
 int /*<<< orphan*/  LSM_SEGMENTPTR_FREE_THRESHOLD ; 
 int LSM_START_DELETE ; 
 int SEGMENT_BTREE_FLAG ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int,int*) ; 
 int FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,scalar_t__) ; 
 int FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(MultiCursor *pCsr, SegmentPtr *pPtr, int bLast){
  Level *pLvl = pPtr->pLevel;
  int rc = LSM_OK;
  FileSystem *pFS = pCsr->pDb->pFS;
  int bIgnore;

  FUNC3(pFS, pPtr, bLast, &rc);
  while( rc==LSM_OK && pPtr->pPg 
      && (pPtr->nCell==0 || (pPtr->flags & SEGMENT_BTREE_FLAG))
  ){
    rc = FUNC6(pPtr, (bLast ? -1 : 1));
  }

  if( rc==LSM_OK && pPtr->pPg ){
    rc = FUNC5(pPtr, bLast ? (pPtr->nCell-1) : 0);
    if( rc==LSM_OK && bLast && pPtr->pSeg!=&pLvl->lhs ){
      int res = FUNC8(pCsr->pDb->xCmp,
          FUNC1(pPtr->eType), pPtr->pKey, pPtr->nKey,
          pLvl->iSplitTopic, pLvl->pSplitKey, pLvl->nSplitKey
      );
      if( res<0 ) FUNC7(pPtr, LSM_SEGMENTPTR_FREE_THRESHOLD);
    }
  }
  
  bIgnore = FUNC4(pCsr, pPtr);
  if( rc==LSM_OK && pPtr->pPg && bIgnore && FUNC0(pPtr->eType) ){
    rc = FUNC2(pCsr, pPtr, bLast);
  }

#if 0
  if( bLast && rc==LSM_OK && pPtr->pPg
   && pPtr->pSeg==&pLvl->lhs 
   && pLvl->nRight && (pPtr->eType & LSM_START_DELETE)
  ){
    pPtr->iCell++;
    pPtr->eType = LSM_END_DELETE | (pLvl->iSplitTopic);
    pPtr->pKey = pLvl->pSplitKey;
    pPtr->nKey = pLvl->nSplitKey;
    pPtr->pVal = 0;
    pPtr->nVal = 0;
  }
#endif

  return rc;
}