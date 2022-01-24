#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  pathkeys; TYPE_1__* parent; } ;
struct TYPE_11__ {int /*<<< orphan*/ * targetlist; } ;
struct TYPE_10__ {int /*<<< orphan*/  relids; int /*<<< orphan*/  relid; } ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_2__ Plan ;
typedef  TYPE_3__ Path ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  AttrNumber ;
typedef  int /*<<< orphan*/  AppendRelInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int**) ; 

__attribute__((used)) static Plan *
FUNC5(PlannerInfo *root, Plan *plan, Path *path, List *pathkeys, List *tlist,
				 AttrNumber *sortColIdx)
{
	AppendRelInfo *appinfo = FUNC3(root, path->parent->relid, false);
	int childSortCols;
	Oid *sortOperators;
	Oid *collations;
	bool *nullsFirst;
	AttrNumber *childColIdx;

	/* push down targetlist to children */
	plan->targetlist = (List *) FUNC0(root, (Node *) tlist, appinfo);

	/* Compute sort column info, and adjust subplan's tlist as needed */
	plan = FUNC4(plan,
										 pathkeys,
										 path->parent->relids,
										 sortColIdx,
										 true,
										 &childSortCols,
										 &childColIdx,
										 &sortOperators,
										 &collations,
										 &nullsFirst);

	/* inject sort node if child sort order does not match desired order */
	if (!FUNC2(pathkeys, path->pathkeys))
	{
		plan = (Plan *)
			FUNC1(plan, childSortCols, childColIdx, sortOperators, collations, nullsFirst);
	}
	return plan;
}