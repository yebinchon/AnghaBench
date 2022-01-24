#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  pEnv; int /*<<< orphan*/ * pFS; int /*<<< orphan*/ * pWorker; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_9__ {char* z; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Segment ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_2__ LsmString ;
typedef  int /*<<< orphan*/  LsmPgno ;
typedef  int /*<<< orphan*/  FileSystem ;

/* Variables and functions */
 int LSM_BUSY ; 
 int LSM_ERROR ; 
 int LSM_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC10(lsm_db *pDb, LsmPgno iFirst, char **pzOut){
  int rc = LSM_OK;
  Snapshot *pWorker;              /* Worker snapshot */
  Segment *pSeg = 0;              /* Array to report on */
  int bUnlock = 0;

  *pzOut = 0;
  if( iFirst==0 ) return LSM_ERROR;

  /* Obtain the worker snapshot */
  pWorker = pDb->pWorker;
  if( !pWorker ){
    rc = FUNC1(pDb);
    if( rc!=LSM_OK ) return rc;
    pWorker = pDb->pWorker;
    bUnlock = 1;
  }

  /* Search for the array that starts on page iFirst */
  pSeg = FUNC0(pWorker, iFirst);

  if( pSeg==0 ){
    /* Could not find the requested array. This is an error. */
    rc = LSM_ERROR;
  }else{
    Page *pPg = 0;
    FileSystem *pFS = pDb->pFS;
    LsmString str;

    FUNC9(&str, pDb->pEnv);
    rc = FUNC4(pFS, pSeg, iFirst, &pPg);
    while( rc==LSM_OK && pPg ){
      Page *pNext = 0;
      FUNC8(&str, " %lld", FUNC6(pPg));
      rc = FUNC5(pSeg, pPg, 1, &pNext);
      FUNC7(pPg);
      pPg = pNext;
    }

    if( rc!=LSM_OK ){
      FUNC3(pDb->pEnv, str.z);
    }else{
      *pzOut = str.z;
    }
  }

  if( bUnlock ){
    int rcwork = LSM_BUSY;
    FUNC2(pDb, 0, &rcwork);
  }
  return rc;
}