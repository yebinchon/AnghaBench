#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  pEnv; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_8__ {int /*<<< orphan*/  iFirst; } ;
typedef  TYPE_2__ Segment ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,char**) ; 
 char* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(
  lsm_db *pDb,                    /* For xMalloc() */
  char *aBuf, 
  int nBuf, 
  int nMin,
  Segment *pSeg
){
  int i = 0;
  if( pSeg ){
    char *zSeg;

    zSeg = FUNC2(pDb->pEnv, pSeg, nMin);
    FUNC3(&aBuf[i], nBuf-i, "%s", zSeg);
    i += FUNC4(&aBuf[i]);
    FUNC0(pDb->pEnv, zSeg);

#ifdef LSM_LOG_FREELIST
    lsmInfoArrayStructure(pDb, 1, pSeg->iFirst, &zSeg);
    snprintf(&aBuf[i], nBuf-1, "    (%s)", zSeg);
    i += strlen(&aBuf[i]);
    lsmFree(pDb->pEnv, zSeg);
#endif
    aBuf[nBuf] = 0;
  }else{
    aBuf[0] = '\0';
  }

  return i;
}