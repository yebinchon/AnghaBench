#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_22__ {int nAutockpt; scalar_t__ nTransOpen; scalar_t__ nMaxFreelist; TYPE_5__* pWorker; TYPE_1__* pShmhdr; } ;
typedef  TYPE_4__ lsm_db ;
struct TYPE_20__ {scalar_t__ nEntry; } ;
struct TYPE_23__ {TYPE_3__* pLevel; TYPE_2__ freelist; } ;
struct TYPE_21__ {scalar_t__ nRight; scalar_t__ pNext; } ;
struct TYPE_19__ {int /*<<< orphan*/  aSnap1; } ;
typedef  TYPE_5__ Snapshot ;

/* Variables and functions */
 int LSM_BUSY ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int LSM_OK ; 
 int /*<<< orphan*/  TREE_OLD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_4__*) ; 
 int FUNC13 (TYPE_4__*) ; 
 int FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC15 (TYPE_4__*,int*) ; 
 int FUNC16 (TYPE_4__*,int,int,int,int*) ; 

__attribute__((used)) static int FUNC17(
  lsm_db *pDb, 
  int bShutdown,
  int nMerge,                     /* Minimum segments to merge together */
  int nPage,                      /* Number of pages to write to disk */
  int *pnWrite,                   /* OUT: Pages actually written to disk */
  int *pbCkpt                     /* OUT: True if an auto-checkpoint is req. */
){
  Snapshot *pWorker;              /* Worker snapshot */
  int rc = LSM_OK;                /* Return code */
  int bDirty = 0;
  int nMax = nPage;               /* Maximum pages to write to disk */
  int nRem = nPage;
  int bCkpt = 0;

  FUNC2( nPage>0 );

  /* Open the worker 'transaction'. It will be closed before this function
  ** returns.  */
  FUNC2( pDb->pWorker==0 );
  rc = FUNC3(pDb);
  if( rc!=LSM_OK ) return rc;
  pWorker = pDb->pWorker;

  /* If this connection is doing auto-checkpoints, set nMax (and nRem) so
  ** that this call stops writing when the auto-checkpoint is due. The
  ** caller will do the checkpoint, then possibly call this function again. */
  if( bShutdown==0 && pDb->nAutockpt ){
    u32 nSync;
    u32 nUnsync;
    int nPgsz;

    FUNC6(pDb, 0, 0, &nSync);
    nUnsync = FUNC4(pDb->pShmhdr->aSnap1, 0);
    nPgsz = FUNC5(pDb->pShmhdr->aSnap1);

    nMax = (int)FUNC1(nMax, (pDb->nAutockpt/nPgsz) - (int)(nUnsync-nSync));
    if( nMax<nRem ){
      bCkpt = 1;
      nRem = FUNC0(nMax, 0);
    }
  }

  /* If there exists in-memory data ready to be flushed to disk, attempt
  ** to flush it now.  */
  if( pDb->nTransOpen==0 ){
    rc = FUNC11(pDb, 0);
  }
  if( FUNC15(pDb, &rc) ){
    /* sortedDbIsFull() returns non-zero if either (a) there are too many
    ** levels in total in the db, or (b) there are too many levels with the
    ** the same age in the db. Either way, call sortedWork() to merge 
    ** existing segments together until this condition is cleared.  */
    if( FUNC12(pDb) ){
      int nPg = 0;
      rc = FUNC16(pDb, nRem, nMerge, 1, &nPg);
      nRem -= nPg;
      FUNC2( rc!=LSM_OK || nRem<=0 || !FUNC12(pDb) );
      bDirty = 1;
    }

    if( rc==LSM_OK && nRem>0 ){
      int nPg = 0;
      rc = FUNC14(pDb, TREE_OLD, &nPg);
      nRem -= nPg;
      if( rc==LSM_OK ){
        if( pDb->nTransOpen>0 ){
          FUNC10(pDb);
        }
        rc = FUNC9(pDb, 1);
        bDirty = 0;
      }
    }
  }

  /* If nPage is still greater than zero, do some merging. */
  if( rc==LSM_OK && nRem>0 && bShutdown==0 ){
    int nPg = 0;
    rc = FUNC16(pDb, nRem, nMerge, 0, &nPg);
    nRem -= nPg;
    if( nPg ) bDirty = 1;
  }

  /* If the in-memory part of the free-list is too large, write a new 
  ** top-level containing just the in-memory free-list entries to disk. */
  if( rc==LSM_OK && pDb->pWorker->freelist.nEntry > pDb->nMaxFreelist ){
    while( rc==LSM_OK && FUNC7(pDb) ){
      int nPg = 0;
      rc = FUNC16(pDb, 16, nMerge, 1, &nPg);
      nRem -= nPg;
    }
    if( rc==LSM_OK ){
      rc = FUNC13(pDb);
    }
    bDirty = 1;
  }

  if( rc==LSM_OK ){
    *pnWrite = (nMax - nRem);
    *pbCkpt = (bCkpt && nRem<=0);
    if( nMerge==1 && pDb->nAutockpt>0 && *pnWrite>0
     && pWorker->pLevel 
     && pWorker->pLevel->nRight==0 
     && pWorker->pLevel->pNext==0 
    ){
      *pbCkpt = 1;
    }
  }

  if( rc==LSM_OK && bDirty ){
    FUNC8(pDb, 0, &rc);
  }else{
    int rcdummy = LSM_BUSY;
    FUNC8(pDb, 0, &rcdummy);
    *pnWrite = 0;
  }
  FUNC2( pDb->pWorker==0 );
  return rc;
}