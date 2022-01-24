#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* pParent; } ;
typedef  TYPE_1__ RtreeNode ;
typedef  int /*<<< orphan*/  RtreeCell ;
typedef  int /*<<< orphan*/  Rtree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SQLITE_CORRUPT_VTAB ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int*) ; 

__attribute__((used)) static int FUNC6(
  Rtree *pRtree,                    /* Rtree table */
  RtreeNode *pNode,                 /* Adjust ancestry of this node. */
  RtreeCell *pCell                  /* This cell was just inserted */
){
  RtreeNode *p = pNode;
  int cnt = 0;
  while( p->pParent ){
    RtreeNode *pParent = p->pParent;
    RtreeCell cell;
    int iCell;

    if( (++cnt)>1000 || FUNC5(pRtree, p, &iCell)  ){
      FUNC0(pRtree);
      return SQLITE_CORRUPT_VTAB;
    }

    FUNC3(pRtree, pParent, iCell, &cell);
    if( !FUNC1(pRtree, &cell, pCell) ){
      FUNC2(pRtree, &cell, pCell);
      FUNC4(pRtree, pParent, &cell, iCell);
    }
 
    p = pParent;
  }
  return SQLITE_OK;
}