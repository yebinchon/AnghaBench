#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {int nBytesPerCell; } ;
struct TYPE_6__ {int isDirty; int /*<<< orphan*/ * zData; } ;
typedef  TYPE_1__ RtreeNode ;
typedef  TYPE_2__ Rtree ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(Rtree *pRtree, RtreeNode *pNode, int iCell){
  u8 *pDst = &pNode->zData[4 + pRtree->nBytesPerCell*iCell];
  u8 *pSrc = &pDst[pRtree->nBytesPerCell];
  int nByte = (FUNC0(pNode) - iCell - 1) * pRtree->nBytesPerCell;
  FUNC1(pDst, pSrc, nByte);
  FUNC2(&pNode->zData[2], FUNC0(pNode)-1);
  pNode->isDirty = 1;
}