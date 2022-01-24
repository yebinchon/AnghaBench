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
typedef  scalar_t__ UpperRelationKind ;
struct TYPE_7__ {int /*<<< orphan*/  pathlist; } ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;

/* Variables and functions */
 int /*<<< orphan*/  CustomPath ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ UPPERREL_GROUP_AGG ; 
 scalar_t__ UPPERREL_WINDOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC4(PlannerInfo *root, UpperRelationKind stage, RelOptInfo *input_rel,
							RelOptInfo *output_rel)
{
	if (UPPERREL_GROUP_AGG == stage)
		FUNC3(root, output_rel);
	if (UPPERREL_WINDOW == stage)
	{
		if (FUNC0(FUNC2(input_rel->pathlist), CustomPath))
			FUNC1(root, input_rel, output_rel);
	}
}