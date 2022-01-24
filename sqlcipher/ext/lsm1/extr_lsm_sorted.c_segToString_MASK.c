#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_env ;
struct TYPE_3__ {int nSize; scalar_t__ iLastPg; scalar_t__ iFirst; scalar_t__ iRoot; } ;
typedef  TYPE_1__ Segment ;
typedef  scalar_t__ LsmPgno ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static char *FUNC4(lsm_env *pEnv, Segment *pSeg, int nMin){
  int nSize = pSeg->nSize;
  LsmPgno iRoot = pSeg->iRoot;
  LsmPgno iFirst = pSeg->iFirst;
  LsmPgno iLast = pSeg->iLastPg;
  char *z;

  char *z1;
  char *z2;
  int nPad;

  z1 = FUNC2(pEnv, "%d.%d", iFirst, iLast);
  if( iRoot ){
    z2 = FUNC2(pEnv, "root=%d", iRoot);
  }else{
    z2 = FUNC2(pEnv, "size=%d", nSize);
  }

  nPad = nMin - 2 - FUNC3(z1) - 1 - FUNC3(z2);
  nPad = FUNC0(0, nPad);

  if( iRoot ){
    z = FUNC2(pEnv, "/%s %*s%s\\", z1, nPad, "", z2);
  }else{
    z = FUNC2(pEnv, "|%s %*s%s|", z1, nPad, "", z2);
  }
  FUNC1(pEnv, z1);
  FUNC1(pEnv, z2);

  return z;
}