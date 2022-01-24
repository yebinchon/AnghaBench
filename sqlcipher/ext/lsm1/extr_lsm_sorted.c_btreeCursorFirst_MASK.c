#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_10__ {scalar_t__ iRoot; } ;
struct TYPE_9__ {int nDepth; int iPg; TYPE_1__* aPg; TYPE_5__* pSeg; int /*<<< orphan*/ * pFS; } ;
struct TYPE_8__ {int iCell; int /*<<< orphan*/ * pPage; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  FileSystem ;
typedef  TYPE_1__ BtreePg ;
typedef  TYPE_2__ BtreeCursor ;

/* Variables and functions */
 int LSM_OK ; 
 int SEGMENT_BTREE_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_5__*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(BtreeCursor *pCsr){
  int rc;

  Page *pPg = 0;
  FileSystem *pFS = pCsr->pFS;
  int iPg = (int)pCsr->pSeg->iRoot;

  do {
    rc = FUNC3(pFS, pCsr->pSeg, iPg, &pPg);
    FUNC0( (rc==LSM_OK)==(pPg!=0) );
    if( rc==LSM_OK ){
      u8 *aData;
      int nData;
      int flags;

      aData = FUNC2(pPg, &nData);
      flags = FUNC8(aData, nData);
      if( (flags & SEGMENT_BTREE_FLAG)==0 ) break;

      if( (pCsr->nDepth % 8)==0 ){
        int nNew = pCsr->nDepth + 8;
        pCsr->aPg = (BtreePg *)FUNC6(
            FUNC4(pFS), pCsr->aPg, sizeof(BtreePg) * nNew, &rc
        );
        if( rc==LSM_OK ){
          FUNC7(&pCsr->aPg[pCsr->nDepth], 0, sizeof(BtreePg) * 8);
        }
      }

      if( rc==LSM_OK ){
        FUNC0( pCsr->aPg[pCsr->nDepth].iCell==0 );
        pCsr->aPg[pCsr->nDepth].pPage = pPg;
        pCsr->nDepth++;
        iPg = (int)FUNC9(aData, nData, 0);
      }
    }
  }while( rc==LSM_OK );
  FUNC5(pPg);
  pCsr->iPg = pCsr->nDepth-1;

  if( rc==LSM_OK && pCsr->nDepth ){
    pCsr->aPg[pCsr->iPg].iCell = -1;
    rc = FUNC1(pCsr);
  }

  return rc;
}