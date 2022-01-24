#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_db ;
struct TYPE_4__ {int nMtMaxCkpt; scalar_t__ eMode; } ;
typedef  TYPE_1__ LsmDb ;

/* Variables and functions */
 scalar_t__ LSMTEST_MODE_BACKGROUND_CKPT ; 
 int /*<<< orphan*/  LSM_INFO_CHECKPOINT_SIZE ; 
 int LSM_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(LsmDb *pDb, lsm_db *db){
  int nSleep = 0;
  int nKB;
  int rc;

  do {
    nKB = 0;
    rc = FUNC0(db, LSM_INFO_CHECKPOINT_SIZE, &nKB);
    if( rc!=LSM_OK || nKB<pDb->nMtMaxCkpt ) break;
#ifdef LSM_MUTEX_PTHREADS
    mt_signal_worker(pDb, 
        (pDb->eMode==LSMTEST_MODE_BACKGROUND_CKPT ? 0 : 1)
    );
#endif
    FUNC3(5000);
    nSleep += 5;
  }while( 1 );

#if 0
    if( nSleep ) printf("# waitOnCheckpointer(): nSleep=%d\n", nSleep);
#endif

  return rc;
}