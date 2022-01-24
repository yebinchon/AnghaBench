#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  iFirst; } ;
struct TYPE_18__ {int /*<<< orphan*/  nSplitKey; int /*<<< orphan*/  pSplitKey; scalar_t__ iSplitTopic; TYPE_3__ lhs; } ;
struct TYPE_17__ {TYPE_1__* pDb; } ;
struct TYPE_15__ {int pPg; int eType; int iCell; int nCell; int flags; int /*<<< orphan*/  nKey; int /*<<< orphan*/  pKey; TYPE_3__* pSeg; TYPE_5__* pLevel; } ;
struct TYPE_14__ {int /*<<< orphan*/  pFS; int /*<<< orphan*/  xCmp; } ;
typedef  TYPE_2__ SegmentPtr ;
typedef  TYPE_3__ Segment ;
typedef  TYPE_4__ MultiCursor ;
typedef  TYPE_5__ Level ;

/* Variables and functions */
 int LSM_END_DELETE ; 
 int LSM_OK ; 
 int LSM_POINT_DELETE ; 
 int /*<<< orphan*/  LSM_SEGMENTPTR_FREE_THRESHOLD ; 
 int LSM_START_DELETE ; 
 int LSM_SYSTEMKEY ; 
 int SEGMENT_BTREE_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_4__*,TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int) ; 
 int FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(
  MultiCursor *pCsr, 
  SegmentPtr *pPtr,
  int bReverse
){
  int eDir = (bReverse ? -1 : 1);
  Level *pLvl = pPtr->pLevel;
  do {
    int rc;
    int iCell;                    /* Number of new cell in page */
    int svFlags = 0;              /* SegmentPtr.eType before advance */

    iCell = pPtr->iCell + eDir;
    FUNC0( pPtr->pPg );
    FUNC0( iCell<=pPtr->nCell && iCell>=-1 );

    if( bReverse && pPtr->pSeg!=&pPtr->pLevel->lhs ){
      svFlags = pPtr->eType;
      FUNC0( svFlags );
    }

    if( iCell>=pPtr->nCell || iCell<0 ){
      do {
        rc = FUNC6(pPtr, eDir); 
      }while( rc==LSM_OK 
           && pPtr->pPg 
           && (pPtr->nCell==0 || (pPtr->flags & SEGMENT_BTREE_FLAG) ) 
      );
      if( rc!=LSM_OK ) return rc;
      iCell = bReverse ? (pPtr->nCell-1) : 0;
    }
    rc = FUNC5(pPtr, iCell);
    if( rc!=LSM_OK ) return rc;

    if( svFlags && pPtr->pPg ){
      int res = FUNC8(pCsr->pDb->xCmp,
          FUNC3(pPtr->eType), pPtr->pKey, pPtr->nKey,
          pLvl->iSplitTopic, pLvl->pSplitKey, pLvl->nSplitKey
      );
      if( res<0 ) FUNC7(pPtr, LSM_SEGMENTPTR_FREE_THRESHOLD);
    }

    if( pPtr->pPg==0 && (svFlags & LSM_END_DELETE) ){
      Segment *pSeg = pPtr->pSeg;
      rc = FUNC1(pCsr->pDb->pFS, pSeg, pSeg->iFirst, &pPtr->pPg);
      if( rc!=LSM_OK ) return rc;
      pPtr->eType = LSM_START_DELETE | LSM_POINT_DELETE;
      pPtr->eType |= (pLvl->iSplitTopic ? LSM_SYSTEMKEY : 0);
      pPtr->pKey = pLvl->pSplitKey;
      pPtr->nKey = pLvl->nSplitKey;
    }

  }while( pCsr 
       && pPtr->pPg 
       && FUNC4(pCsr, pPtr)
       && FUNC2(pPtr->eType)
  );

  return LSM_OK;
}