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
struct TYPE_3__ {int /*<<< orphan*/  nSize; int /*<<< orphan*/  iRoot; int /*<<< orphan*/  iLastPg; int /*<<< orphan*/  iFirst; } ;
typedef  TYPE_1__ Segment ;
typedef  int /*<<< orphan*/  CkptBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC1(
  Segment *pSeg, 
  CkptBuffer *p, 
  int *piOut, 
  int *pRc
){
  FUNC0(p, piOut, pSeg->iFirst, pRc);
  FUNC0(p, piOut, pSeg->iLastPg, pRc);
  FUNC0(p, piOut, pSeg->iRoot, pRc);
  FUNC0(p, piOut, pSeg->nSize, pRc);
}