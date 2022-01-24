#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  pEnv; int /*<<< orphan*/ * pFS; int /*<<< orphan*/ * pWorker; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_13__ {char* z; } ;
struct TYPE_12__ {int iFirst; int iLastPg; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  TYPE_2__ Segment ;
typedef  TYPE_3__ LsmString ;
typedef  int /*<<< orphan*/  LsmPgno ;
typedef  int /*<<< orphan*/  FileSystem ;

/* Variables and functions */
 int LSM_BUSY ; 
 int LSM_ERROR ; 
 int LSM_OK ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int FUNC9(
  lsm_db *pDb, 
  int bBlock,                     /* True for block numbers only */
  LsmPgno iFirst,
  char **pzOut
){
  int rc = LSM_OK;
  Snapshot *pWorker;              /* Worker snapshot */
  Segment *pArray = 0;            /* Array to report on */
  int bUnlock = 0;

  *pzOut = 0;
  if( iFirst==0 ) return LSM_ERROR;

  /* Obtain the worker snapshot */
  pWorker = pDb->pWorker;
  if( !pWorker ){
    rc = FUNC5(pDb);
    if( rc!=LSM_OK ) return rc;
    pWorker = pDb->pWorker;
    bUnlock = 1;
  }

  /* Search for the array that starts on page iFirst */
  pArray = FUNC0(pWorker, iFirst);

  if( pArray==0 ){
    /* Could not find the requested array. This is an error. */
    rc = LSM_ERROR;
  }else{
    FileSystem *pFS = pDb->pFS;
    LsmString str;
    int iBlk;
    int iLastBlk;
   
    iBlk = FUNC4(pFS, pArray->iFirst);
    iLastBlk = FUNC4(pFS, pArray->iLastPg);

    FUNC8(&str, pDb->pEnv);
    if( bBlock ){
      FUNC7(&str, "%d", iBlk);
      while( iBlk!=iLastBlk ){
        FUNC1(pFS, pArray, iBlk, &iBlk);
        FUNC7(&str, " %d", iBlk);
      }
    }else{
      FUNC7(&str, "%d", pArray->iFirst);
      while( iBlk!=iLastBlk ){
        FUNC7(&str, " %d", FUNC3(pFS, iBlk));
        FUNC1(pFS, pArray, iBlk, &iBlk);
        FUNC7(&str, " %d", FUNC2(pFS, iBlk));
      }
      FUNC7(&str, " %d", pArray->iLastPg);
    }

    *pzOut = str.z;
  }

  if( bUnlock ){
    int rcwork = LSM_BUSY;
    FUNC6(pDb, 0, &rcwork);
  }
  return rc;
}