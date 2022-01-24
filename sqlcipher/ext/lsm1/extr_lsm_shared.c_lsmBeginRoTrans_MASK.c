#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ iReader; int bRoTrans; scalar_t__* apShm; int /*<<< orphan*/ * pShmhdr; scalar_t__ bReadonly; } ;
typedef  TYPE_1__ lsm_db ;
typedef  int /*<<< orphan*/  ShmHeader ;

/* Variables and functions */
 int LSM_BUSY ; 
 int /*<<< orphan*/  LSM_LOCK_DMS1 ; 
 int /*<<< orphan*/  LSM_LOCK_DMS3 ; 
 int /*<<< orphan*/  LSM_LOCK_NREADER ; 
 int /*<<< orphan*/  LSM_LOCK_ROTRANS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LSM_LOCK_SHARED ; 
 int /*<<< orphan*/  LSM_LOCK_UNLOCK ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC9(lsm_db *db){
  int rc = LSM_OK;

  FUNC1( db->bReadonly && db->pShmhdr==0 );
  FUNC1( db->iReader<0 );

  if( db->bRoTrans==0 ){

    /* Attempt a shared-lock on DMS1. */
    rc = FUNC6(db, LSM_LOCK_DMS1, LSM_LOCK_SHARED, 0);
    if( rc!=LSM_OK ) return rc;

    rc = FUNC7(
        db, FUNC0(0), LSM_LOCK_NREADER, LSM_LOCK_SHARED
    );
    if( rc==LSM_OK ){
      /* System is not live. Take a SHARED lock on the ROTRANS byte and
      ** release DMS1. Locking ROTRANS tells all read-write clients that they
      ** may not recycle any disk space from within the database or log files,
      ** as a read-only client may be using it.  */
      rc = FUNC6(db, LSM_LOCK_ROTRANS, LSM_LOCK_SHARED, 0);
      FUNC6(db, LSM_LOCK_DMS1, LSM_LOCK_UNLOCK, 0);

      if( rc==LSM_OK ){
        db->bRoTrans = 1;
        rc = FUNC5(db, 1);
        if( rc==LSM_OK ){
          db->pShmhdr = (ShmHeader *)db->apShm[0];
          FUNC8(db->pShmhdr, 0, sizeof(ShmHeader));
          rc = FUNC3(db);
          if( rc==LSM_OK ){
            rc = FUNC4(db);
          }
        }
      }
    }else if( rc==LSM_BUSY ){
      /* System is live! */
      rc = FUNC6(db, LSM_LOCK_DMS3, LSM_LOCK_SHARED, 0);
      FUNC6(db, LSM_LOCK_DMS1, LSM_LOCK_UNLOCK, 0);
      if( rc==LSM_OK ){
        rc = FUNC5(db, 1);
        if( rc==LSM_OK ){
          db->pShmhdr = (ShmHeader *)db->apShm[0];
        }
      }
    }

    if( rc==LSM_OK ){
      rc = FUNC2(db);
    }
  }

  return rc;
}