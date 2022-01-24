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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int iFirst; scalar_t__ iLastPg; int nSize; scalar_t__ iRoot; } ;
typedef  TYPE_1__ Segment ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void FUNC2(
  u32 *aIn,
  int *piIn,
  Segment *pSegment               /* Populate this structure */
){
  FUNC0( pSegment->iFirst==0 && pSegment->iLastPg==0 );
  FUNC0( pSegment->nSize==0 && pSegment->iRoot==0 );
  pSegment->iFirst = FUNC1(aIn, piIn);
  pSegment->iLastPg = FUNC1(aIn, piIn);
  pSegment->iRoot = FUNC1(aIn, piIn);
  pSegment->nSize = (int)FUNC1(aIn, piIn);
  FUNC0( pSegment->iFirst );
}