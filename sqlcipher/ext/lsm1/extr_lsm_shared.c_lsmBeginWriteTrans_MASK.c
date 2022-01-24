#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  iTransId; } ;
struct TYPE_18__ {scalar_t__ iOldLog; TYPE_1__ root; } ;
struct TYPE_17__ {scalar_t__ nTransOpen; scalar_t__ bDiscardOld; scalar_t__ bReadonly; scalar_t__ iReader; scalar_t__ pCsr; TYPE_2__* pClient; TYPE_4__ treehdr; TYPE_5__* pShmhdr; } ;
typedef  TYPE_3__ lsm_db ;
typedef  TYPE_4__ TreeHeader ;
struct TYPE_19__ {int bWriter; int /*<<< orphan*/  hdr1; } ;
struct TYPE_16__ {scalar_t__ iLogOff; } ;
typedef  TYPE_5__ ShmHeader ;

/* Variables and functions */
 int LSM_BUSY ; 
 int /*<<< orphan*/  LSM_LOCK_EXCL ; 
 int /*<<< orphan*/  LSM_LOCK_UNLOCK ; 
 int /*<<< orphan*/  LSM_LOCK_WRITER ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 

int FUNC9(lsm_db *pDb){
  int rc = LSM_OK;                /* Return code */
  ShmHeader *pShm = pDb->pShmhdr; /* Shared memory header */

  FUNC0( pDb->nTransOpen==0 );
  FUNC0( pDb->bDiscardOld==0 );
  FUNC0( pDb->bReadonly==0 );

  /* If there is no read-transaction open, open one now. */
  if( pDb->iReader<0 ){
    rc = FUNC1(pDb);
  }

  /* Attempt to take the WRITER lock */
  if( rc==LSM_OK ){
    rc = FUNC4(pDb, LSM_LOCK_WRITER, LSM_LOCK_EXCL, 0);
  }

  /* If the previous writer failed mid-transaction, run emergency rollback. */
  if( rc==LSM_OK && pShm->bWriter ){
    rc = FUNC7(pDb);
    if( rc==LSM_OK ) pShm->bWriter = 0;
  }

  /* Check that this connection is currently reading from the most recent
  ** version of the database. If not, return LSM_BUSY.  */
  if( rc==LSM_OK && FUNC8(&pShm->hdr1, &pDb->treehdr, sizeof(TreeHeader)) ){
    rc = LSM_BUSY;
  }

  if( rc==LSM_OK ){
    rc = FUNC3(pDb);
  }

  /* If everything was successful, set the "transaction-in-progress" flag
  ** and return LSM_OK. Otherwise, if some error occurred, relinquish the 
  ** WRITER lock and return an error code.  */
  if( rc==LSM_OK ){
    TreeHeader *p = &pDb->treehdr;
    pShm->bWriter = 1;
    p->root.iTransId++;
    if( FUNC6(pDb) && p->iOldLog==pDb->pClient->iLogOff ){
      FUNC5(pDb);
      pDb->bDiscardOld = 1;
    }
  }else{
    FUNC4(pDb, LSM_LOCK_WRITER, LSM_LOCK_UNLOCK, 0);
    if( pDb->pCsr==0 ) FUNC2(pDb);
  }
  return rc;
}