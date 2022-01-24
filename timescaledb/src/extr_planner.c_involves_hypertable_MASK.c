#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int reloptkind; int /*<<< orphan*/  relids; int /*<<< orphan*/  relid; } ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  RangeTblEntry ;
typedef  int /*<<< orphan*/  PlannerInfo ;

/* Variables and functions */
#define  RELOPT_BASEREL 130 
#define  RELOPT_JOINREL 129 
#define  RELOPT_OTHER_MEMBER_REL 128 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC5(PlannerInfo *root, RelOptInfo *rel)
{
	RangeTblEntry *rte;

	switch (rel->reloptkind)
	{
		case RELOPT_BASEREL:
		case RELOPT_OTHER_MEMBER_REL:
			/* Optimization for a quick exit */
			rte = FUNC4(rel->relid, root);
			if (!(FUNC3(rel, rte) || FUNC2(rel, rte)))
				return false;

			return FUNC1(root, rel->relid);
		case RELOPT_JOINREL:
			return FUNC0(root, rel->relids);
		default:
			return false;
	}
}