#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  pEnv; TYPE_3__* pShmhdr; TYPE_2__* pWorker; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_9__ {int /*<<< orphan*/  aSnap1; int /*<<< orphan*/  aSnap2; } ;
struct TYPE_8__ {int /*<<< orphan*/  iId; } ;
typedef  TYPE_2__ Snapshot ;
typedef  TYPE_3__ ShmHeader ;

/* Variables and functions */
 int LSM_META_RW_PAGE_SIZE ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,int,void**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int) ; 

int FUNC6(lsm_db *pDb, int bFlush){
  Snapshot *pSnap = pDb->pWorker;
  ShmHeader *pShm = pDb->pShmhdr;
  void *p = 0;
  int n = 0;
  int rc;

  pSnap->iId++;
  rc = FUNC2(pDb, bFlush, pSnap->iId, 1, &p, &n);
  if( rc!=LSM_OK ) return rc;
  FUNC0( FUNC1((u32 *)p) );

  FUNC0( n<=LSM_META_RW_PAGE_SIZE );
  FUNC5(pShm->aSnap2, p, n);
  FUNC4(pDb);
  FUNC5(pShm->aSnap1, p, n);
  FUNC3(pDb->pEnv, p);

  /* assert( lsmFsIntegrityCheck(pDb) ); */
  return LSM_OK;
}