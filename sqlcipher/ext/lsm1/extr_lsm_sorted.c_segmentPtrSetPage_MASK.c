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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_3__ {int /*<<< orphan*/ * pPg; int /*<<< orphan*/  iPtr; scalar_t__ flags; int /*<<< orphan*/  nCell; } ;
typedef  TYPE_1__ SegmentPtr ;
typedef  int /*<<< orphan*/  Page ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(SegmentPtr *pPtr, Page *pNext){
  FUNC1(pPtr->pPg);
  if( pNext ){
    int nData;
    u8 *aData = FUNC0(pNext, &nData);
    pPtr->nCell = FUNC3(aData, nData);
    pPtr->flags = (u16)FUNC2(aData, nData);
    pPtr->iPtr = FUNC4(aData, nData);
  }
  pPtr->pPg = pNext;
}