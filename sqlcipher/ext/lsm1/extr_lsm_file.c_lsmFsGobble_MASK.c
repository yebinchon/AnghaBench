#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * pWorker; int /*<<< orphan*/ * pFS; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_10__ {scalar_t__ nSize; scalar_t__ iFirst; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  TYPE_2__ Segment ;
typedef  scalar_t__ LsmPgno ;
typedef  int /*<<< orphan*/  FileSystem ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,scalar_t__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 

void FUNC9(
  lsm_db *pDb,
  Segment *pRun, 
  LsmPgno *aPgno,
  int nPgno
){
  int rc = LSM_OK;
  FileSystem *pFS = pDb->pFS;
  Snapshot *pSnapshot = pDb->pWorker;
  int iBlk;

  FUNC0( pRun->nSize>0 );
  FUNC0( 0==FUNC8(pFS, pRun) );
  FUNC0( nPgno>0 && 0==FUNC6(pFS, pRun, aPgno[0]) );

  iBlk = FUNC7(pFS, pRun->iFirst);
  pRun->nSize += (int)(pRun->iFirst - FUNC3(pFS, iBlk));

  while( rc==LSM_OK ){
    int iNext = 0;
    LsmPgno iFirst = FUNC1(pFS, iBlk, aPgno, nPgno);
    if( iFirst ){
      pRun->iFirst = iFirst;
      break;
    }
    rc = FUNC2(pFS, pRun, iBlk, &iNext);
    if( rc==LSM_OK ) rc = FUNC4(pFS, pSnapshot, pRun, iBlk);
    pRun->nSize -= (int)(
        1 + FUNC5(pFS, iBlk) - FUNC3(pFS, iBlk)
    );
    iBlk = iNext;
  }

  pRun->nSize -= (int)(pRun->iFirst - FUNC3(pFS, iBlk));
  FUNC0( pRun->nSize>0 );
}