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
struct TYPE_4__ {int /*<<< orphan*/  iLastPg; int /*<<< orphan*/  iFirst; int /*<<< orphan*/ * pRedirect; } ;
typedef  TYPE_1__ Segment ;
typedef  int /*<<< orphan*/  Redirect ;
typedef  int /*<<< orphan*/  LsmPgno ;
typedef  int /*<<< orphan*/  FileSystem ;

/* Variables and functions */
 int LSM_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

int FUNC3(
  FileSystem *pFS, 
  Segment *pSeg, 
  LsmPgno iPg, 
  int *pbRes
){
  Redirect *pRedir = pSeg->pRedirect;
  int rc = LSM_OK;
  int iBlk;
  int iLastBlk;
  int iPgBlock;                   /* Block containing page iPg */

  iPgBlock = FUNC1(pFS, pSeg->iFirst);
  iBlk = FUNC2(pRedir, FUNC1(pFS, pSeg->iFirst));
  iLastBlk = FUNC2(pRedir, FUNC1(pFS, pSeg->iLastPg));

  while( iBlk!=iLastBlk && iBlk!=iPgBlock && rc==LSM_OK ){
    rc = FUNC0(pFS, pSeg, iBlk, &iBlk);
  }

  *pbRes = (iBlk==iPgBlock);
  return rc;
}