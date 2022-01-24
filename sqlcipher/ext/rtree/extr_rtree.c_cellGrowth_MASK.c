#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ RtreeDValue ;
typedef  int /*<<< orphan*/  RtreeCell ;
typedef  int /*<<< orphan*/  Rtree ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static RtreeDValue FUNC3(Rtree *pRtree, RtreeCell *p, RtreeCell *pCell){
  RtreeDValue area;
  RtreeCell cell;
  FUNC2(&cell, p, sizeof(RtreeCell));
  area = FUNC0(pRtree, &cell);
  FUNC1(pRtree, &cell, pCell);
  return (FUNC0(pRtree, &cell)-area);
}