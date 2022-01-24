#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ parent_reloid; } ;
struct TYPE_11__ {TYPE_1__* parse; } ;
struct TYPE_10__ {scalar_t__ relid; } ;
struct TYPE_9__ {scalar_t__ commandType; } ;
typedef  int /*<<< orphan*/  RelOptInfo ;
typedef  TYPE_2__ RangeTblEntry ;
typedef  TYPE_3__ PlannerInfo ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Index ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  int /*<<< orphan*/  Cache ;
typedef  TYPE_4__ AppendRelInfo ;

/* Variables and functions */
 scalar_t__ CMD_DELETE ; 
 scalar_t__ CMD_UPDATE ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static bool
FUNC4(PlannerInfo *root, RelOptInfo *rel, Index rti, RangeTblEntry *rte)
{
	if (root->parse->commandType == CMD_UPDATE || root->parse->commandType == CMD_DELETE)
	{
		Oid parent_oid;
		AppendRelInfo *appinfo = FUNC1(root, rti, true);
		if (!appinfo)
			return false;
		parent_oid = appinfo->parent_reloid;
		if (parent_oid != InvalidOid && rte->relid != parent_oid)
		{
			Cache *hcache = FUNC3();
			Hypertable *parent_ht = FUNC2(hcache, parent_oid);
			FUNC0(hcache);
			if (parent_ht)
				return true;
		}
	}
	return false;
}