#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  pEnv; int /*<<< orphan*/  pFS; int /*<<< orphan*/  xLog; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_13__ {scalar_t__ iFirst; } ;
typedef  TYPE_2__ Segment ;
typedef  int /*<<< orphan*/  Page ;

/* Variables and functions */
 int INFO_PAGE_DUMP_VALUES ; 
 int /*<<< orphan*/  LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int) ; 

void FUNC10(lsm_db *pDb, Segment *pRun, int bVals){
  FUNC0( pDb->xLog );
  if( pRun && pRun->iFirst ){
    int flags = (bVals ? INFO_PAGE_DUMP_VALUES : 0);
    char *zSeg;
    Page *pPg;

    zSeg = FUNC8(pDb->pEnv, pRun, 0);
    FUNC7(pDb, LSM_OK, "Segment: %s", zSeg);
    FUNC2(pDb->pEnv, zSeg);

    FUNC3(pDb->pFS, pRun, pRun->iFirst, &pPg);
    while( pPg ){
      Page *pNext;
      char *z = 0;
      FUNC1(pDb, FUNC5(pPg), flags, &z);
      FUNC7(pDb, LSM_OK, "%s", z);
      FUNC2(pDb->pEnv, z);
#if 0
      sortedDumpPage(pDb, pRun, pPg, bVals);
#endif
      FUNC4(pRun, pPg, 1, &pNext);
      FUNC6(pPg);
      pPg = pNext;
    }
  }
}