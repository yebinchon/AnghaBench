#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int i64 ;
struct TYPE_7__ {int /*<<< orphan*/  pCompress; } ;
typedef  int /*<<< orphan*/  Segment ;
typedef  TYPE_1__ FileSystem ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC5(
  FileSystem *pFS, 
  Segment *pSeg,
  i64 iOff, 
  int iSub, 
  i64 *piRes
){
  i64 iStart;
  int iBlk = 0;
  int rc;

  FUNC0( pFS->pCompress );

  iStart = FUNC2(pFS, FUNC4(pFS, iOff));
  if( (iOff-iSub)>=iStart ){
    *piRes = (iOff-iSub);
    return LSM_OK;
  }

  rc = FUNC1(pFS, pSeg, FUNC4(pFS, iOff), &iBlk);
  *piRes = FUNC3(pFS, iBlk) - iSub + (iOff - iStart + 1);
  return rc;
}