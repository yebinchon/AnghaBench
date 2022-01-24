#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ i64 ;
struct TYPE_13__ {scalar_t__ nBlocksize; scalar_t__ nMapLimit; int nPagesize; int /*<<< orphan*/  pEnv; int /*<<< orphan*/  fdDb; scalar_t__ pMap; TYPE_1__* pDb; } ;
struct TYPE_12__ {int /*<<< orphan*/  iRoot; int /*<<< orphan*/  iLastPg; int /*<<< orphan*/  iFirst; } ;
struct TYPE_11__ {int /*<<< orphan*/ * aiAppend; } ;
struct TYPE_10__ {TYPE_2__* pWorker; } ;
typedef  TYPE_2__ Snapshot ;
typedef  TYPE_3__ Segment ;
typedef  TYPE_4__ FileSystem ;

/* Variables and functions */
 int LSM_APPLIST_SZ ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC10(FileSystem *pFS, Segment *pSeg, int iTo, int iFrom){
  Snapshot *p = pFS->pDb->pWorker;
  int rc = LSM_OK;
  int i;
  i64 nMap;

  i64 iFromOff = (i64)(iFrom-1) * pFS->nBlocksize;
  i64 iToOff = (i64)(iTo-1) * pFS->nBlocksize;
  
  FUNC1( iTo!=1 );
  FUNC1( iFrom>iTo );

  /* Grow the mapping as required. */
  nMap = FUNC0(pFS->nMapLimit, (i64)iFrom * pFS->nBlocksize);
  FUNC2(pFS, nMap, &rc);

  if( rc==LSM_OK ){
    const int nPagePerBlock = (pFS->nBlocksize / pFS->nPagesize);
    int nSz = pFS->nPagesize;
    u8 *aBuf = 0;
    u8 *aData = 0;

    for(i=0; rc==LSM_OK && i<nPagePerBlock; i++){
      i64 iOff = iFromOff + i*nSz;

      /* Set aData to point to a buffer containing the from page */
      if( (iOff+nSz)<=pFS->nMapLimit ){
        u8 *aMap = (u8 *)(pFS->pMap);
        aData = &aMap[iOff];
      }else{
        if( aBuf==0 ){
          aBuf = (u8 *)FUNC8(pFS->pEnv, nSz, &rc);
          if( aBuf==0 ) break;
        }
        aData = aBuf;
        rc = FUNC4(pFS->pEnv, pFS->fdDb, iOff, aData, nSz);
      }

      /* Copy aData to the to page */
      if( rc==LSM_OK ){
        iOff = iToOff + i*nSz;
        if( (iOff+nSz)<=pFS->nMapLimit ){
          u8 *aMap = (u8 *)(pFS->pMap);
          FUNC9(&aMap[iOff], aData, nSz);
        }else{
          rc = FUNC5(pFS->pEnv, pFS->fdDb, iOff, aData, nSz);
        }
      }
    }
    FUNC6(pFS->pEnv, aBuf);
    FUNC7(pFS);
  }

  /* Update append-point list if necessary */
  for(i=0; i<LSM_APPLIST_SZ; i++){
    FUNC3(pFS, iTo, iFrom, &p->aiAppend[i]);
  }

  /* Update the Segment structure itself */
  FUNC3(pFS, iTo, iFrom, &pSeg->iFirst);
  FUNC3(pFS, iTo, iFrom, &pSeg->iLastPg);
  FUNC3(pFS, iTo, iFrom, &pSeg->iRoot);

  return rc;
}