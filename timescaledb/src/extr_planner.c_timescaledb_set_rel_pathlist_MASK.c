#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  (* set_rel_pathlist_dml ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  relid; } ;
typedef  int /*<<< orphan*/  RelOptInfo ;
typedef  TYPE_1__ RangeTblEntry ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Index ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  int /*<<< orphan*/  Cache ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_2__* ts_cm_functions ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  ts_guc_optimize_non_hypertables ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 () ; 

__attribute__((used)) static void
FUNC14(PlannerInfo *root, RelOptInfo *rel, Index rti, RangeTblEntry *rte)
{
	Hypertable *ht;
	Cache *hcache;
	Oid ht_reloid = rte->relid;
	bool is_htdml;

	if (&prev_set_rel_pathlist_hook != NULL)
		FUNC6)(root, rel, rti, rte);

	if (!FUNC11() || FUNC0(rel) || !FUNC1(rte->relid))
		return;

	/* do we have a DML transformation here */
	is_htdml = FUNC5(root, rel, rti, rte);

	/* quick abort if only optimizing hypertables */
	if (!ts_guc_optimize_non_hypertables &&
		!(FUNC4(rel, rte) || FUNC3(rel, rte) || is_htdml))
		return;

	hcache = FUNC13();

	/*
	 * if this is an append child or DML we use the parent relid to
	 * check if its a hypertable
	 */
	if (FUNC3(rel, rte) || is_htdml)
		ht_reloid = FUNC2(root, rti);

	ht = FUNC12(hcache, ht_reloid);

	if (!is_htdml)
	{
		FUNC9(root, rel, rti, rte, ht);
	}
	else
	{
		if (ts_cm_functions->set_rel_pathlist_dml != NULL)
			ts_cm_functions->set_rel_pathlist_dml(root, rel, rti, rte, ht);
	}

	FUNC10(hcache);
}