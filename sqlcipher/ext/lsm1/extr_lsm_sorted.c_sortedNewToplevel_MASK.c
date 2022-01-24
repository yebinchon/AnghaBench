#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_48__   TYPE_7__ ;
typedef  struct TYPE_47__   TYPE_5__ ;
typedef  struct TYPE_46__   TYPE_4__ ;
typedef  struct TYPE_45__   TYPE_3__ ;
typedef  struct TYPE_44__   TYPE_2__ ;
typedef  struct TYPE_43__   TYPE_1__ ;
typedef  struct TYPE_42__   TYPE_17__ ;

/* Type definitions */
struct TYPE_43__ {int /*<<< orphan*/  nChunk; } ;
struct TYPE_44__ {int bUseFreelist; int /*<<< orphan*/  pEnv; TYPE_5__* pFreelist; TYPE_17__* pWorker; int /*<<< orphan*/  pFS; TYPE_1__ treehdr; } ;
typedef  TYPE_2__ lsm_db ;
typedef  int /*<<< orphan*/  freelist ;
struct TYPE_45__ {scalar_t__ iFirst; scalar_t__ iRoot; } ;
struct TYPE_48__ {scalar_t__ pMerge; int flags; TYPE_3__ lhs; struct TYPE_48__* pNext; } ;
struct TYPE_47__ {int bFlush; int nWork; scalar_t__ nEntry; scalar_t__ aEntry; TYPE_4__* pCsr; TYPE_7__* pLevel; TYPE_2__* pDb; } ;
struct TYPE_46__ {int /*<<< orphan*/ * pPrevMergePtr; int /*<<< orphan*/  pBtCsr; scalar_t__ aPtr; TYPE_2__* pDb; } ;
struct TYPE_42__ {int nWrite; TYPE_5__ freelist; } ;
typedef  int /*<<< orphan*/  SegmentPtr ;
typedef  TYPE_3__ Segment ;
typedef  TYPE_4__ MultiCursor ;
typedef  TYPE_5__ MergeWorker ;
typedef  TYPE_5__ Merge ;
typedef  int /*<<< orphan*/  LsmPgno ;
typedef  TYPE_7__ Level ;
typedef  TYPE_5__ Freelist ;

/* Variables and functions */
 int LEVEL_FREELIST_ONLY ; 
 int LEVEL_INCOMPLETE ; 
 int /*<<< orphan*/  LSM_LOG_DATA ; 
 int LSM_OK ; 
 int TREE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC2 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC3 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_17__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_17__*,int,TYPE_3__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_4__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_17__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int*) ; 
 int FUNC17 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,TYPE_7__*,int*) ; 
 int FUNC19 (TYPE_4__*,TYPE_17__*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 TYPE_4__* FUNC21 (TYPE_2__*,int*) ; 
 int FUNC22 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC25(
  lsm_db *pDb,                    /* Connection handle */
  int eTree,                      /* One of the TREE_XXX constants */
  int *pnWrite                    /* OUT: Number of database pages written */
){
  int rc = LSM_OK;                /* Return Code */
  MultiCursor *pCsr = 0;
  Level *pNext = 0;               /* The current top level */
  Level *pNew;                    /* The new level itself */
  Segment *pLinked = 0;           /* Delete separators from this segment */
  Level *pDel = 0;                /* Delete this entire level */
  int nWrite = 0;                 /* Number of database pages written */
  Freelist freelist;

  if( eTree!=TREE_NONE ){
    rc = FUNC11(pDb, pDb->treehdr.nChunk);
  }

  FUNC0( pDb->bUseFreelist==0 );
  pDb->pFreelist = &freelist;
  pDb->bUseFreelist = 1;
  FUNC14(&freelist, 0, sizeof(freelist));

  /* Allocate the new level structure to write to. */
  pNext = FUNC3(pDb->pWorker);
  pNew = (Level *)FUNC10(pDb->pEnv, sizeof(Level), &rc);
  if( pNew ){
    pNew->pNext = pNext;
    FUNC4(pDb->pWorker, pNew);
  }

  /* Create a cursor to gather the data required by the new segment. The new
  ** segment contains everything in the tree and pointers to the next segment
  ** in the database (if any).  */
  pCsr = FUNC21(pDb, &rc);
  if( pCsr ){
    pCsr->pDb = pDb;
    rc = FUNC22(pCsr);
    if( rc==LSM_OK ){
      rc = FUNC19(pCsr, pDb->pWorker, eTree);
    }
    if( rc==LSM_OK && pNext && pNext->pMerge==0 ){
      if( (pNext->flags & LEVEL_FREELIST_ONLY) ){
        pDel = pNext;
        pCsr->aPtr = FUNC10(pDb->pEnv, sizeof(SegmentPtr), &rc);
        FUNC18(pCsr, pNext, &rc);
      }else if( eTree!=TREE_NONE && pNext->lhs.iRoot ){
        pLinked = &pNext->lhs;
        rc = FUNC2(pDb, pLinked, &pCsr->pBtCsr);
      }
    }

    /* If this will be the only segment in the database, discard any delete
    ** markers present in the in-memory tree.  */
    if( pNext==0 ){
      FUNC20(pCsr);
    }
  }

  if( rc!=LSM_OK ){
    FUNC8(pCsr, 0);
  }else{
    LsmPgno iLeftPtr = 0;
    Merge merge;                  /* Merge object used to create new level */
    MergeWorker mergeworker;      /* MergeWorker object for the same purpose */

    FUNC14(&merge, 0, sizeof(Merge));
    FUNC14(&mergeworker, 0, sizeof(MergeWorker));

    pNew->pMerge = &merge;
    pNew->flags |= LEVEL_INCOMPLETE;
    mergeworker.pDb = pDb;
    mergeworker.pLevel = pNew;
    mergeworker.pCsr = pCsr;
    pCsr->pPrevMergePtr = &iLeftPtr;

    /* Mark the separators array for the new level as a "phantom". */
    mergeworker.bFlush = 1;

    /* Do the work to create the new merged segment on disk */
    if( rc==LSM_OK ) rc = FUNC9(pCsr);
    while( rc==LSM_OK && FUNC15(&mergeworker)==0 ){
      rc = FUNC17(&mergeworker);
    }
    FUNC16(&mergeworker, &rc);
    FUNC0( rc!=LSM_OK || mergeworker.nWork==0 || pNew->lhs.iFirst );
    if( rc==LSM_OK && pNew->lhs.iFirst ){
      rc = FUNC7(pDb->pFS, &pNew->lhs);
    }
    nWrite = mergeworker.nWork;
    pNew->flags &= ~LEVEL_INCOMPLETE;
    if( eTree==TREE_NONE ){
      pNew->flags |= LEVEL_FREELIST_ONLY;
    }
    pNew->pMerge = 0;
  }

  if( rc!=LSM_OK || pNew->lhs.iFirst==0 ){
    FUNC0( rc!=LSM_OK || pDb->pWorker->freelist.nEntry==0 );
    FUNC4(pDb->pWorker, pNext);
    FUNC23(pDb->pEnv, pNew);
  }else{
    if( pLinked ){
      pLinked->iRoot = 0;
    }else if( pDel ){
      FUNC0( pNew->pNext==pDel );
      pNew->pNext = pDel->pNext;
      FUNC6(pDb->pFS, pDb->pWorker, 1, &pDel->lhs);
      FUNC23(pDb->pEnv, pDel);
    }

#if LSM_LOG_STRUCTURE
    lsmSortedDumpStructure(pDb, pDb->pWorker, LSM_LOG_DATA, 0, "new-toplevel");
#endif

    if( freelist.nEntry ){
      Freelist *p = &pDb->pWorker->freelist;
      FUNC5(pDb->pEnv, p->aEntry);
      FUNC13(p, &freelist, sizeof(freelist));
      freelist.aEntry = 0;
    }else{
      pDb->pWorker->freelist.nEntry = 0;
    }

    FUNC1(pDb, &pNew->lhs);
    FUNC24(pDb);
  }

  if( pnWrite ) *pnWrite = nWrite;
  pDb->pWorker->nWrite += nWrite;
  pDb->pFreelist = 0;
  pDb->bUseFreelist = 0;
  FUNC5(pDb->pEnv, freelist.aEntry);
  return rc;
}