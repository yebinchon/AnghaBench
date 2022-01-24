#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  pEnv; } ;
typedef  TYPE_3__ lsm_db ;
struct TYPE_13__ {int /*<<< orphan*/  nData; int /*<<< orphan*/  pData; } ;
struct TYPE_16__ {TYPE_2__ key; int /*<<< orphan*/  eType; TYPE_1__* aPtr; } ;
struct TYPE_15__ {scalar_t__ iRoot; } ;
struct TYPE_12__ {TYPE_4__* pSeg; } ;
typedef  TYPE_4__ Segment ;
typedef  TYPE_5__ MultiCursor ;
typedef  scalar_t__ LsmPgno ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*,scalar_t__*,int) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_5__*,TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
  lsm_db *pDb,                    /* Worker connection */
  MultiCursor *pCsr,              /* Multi-cursor being used for a merge */
  int iGobble                     /* pCsr->aPtr[] entry to operate on */
){
  int rc = LSM_OK;
  if( FUNC4(pCsr->eType)==0 ){
    Segment *pSeg = pCsr->aPtr[iGobble].pSeg;
    LsmPgno *aPg;
    int nPg;

    /* Seek from the root of the b-tree to the segment leaf that may contain
    ** a key equal to the one multi-cursor currently points to. Record the
    ** page number of each b-tree page and the leaf. The segment may be
    ** gobbled up to (but not including) the first of these page numbers.
    */
    FUNC0( pSeg->iRoot>0 );
    aPg = FUNC3(pDb->pEnv, sizeof(LsmPgno)*32, &rc);
    if( rc==LSM_OK ){
      rc = FUNC5(pCsr, pSeg, 
          FUNC4(pCsr->eType), pCsr->key.pData, pCsr->key.nData, aPg, 0
      ); 
    }

    if( rc==LSM_OK ){
      for(nPg=0; aPg[nPg]; nPg++);
      FUNC2(pDb, pSeg, aPg, nPg);
    }

    FUNC1(pDb->pEnv, aPg);
  }
  return rc;
}