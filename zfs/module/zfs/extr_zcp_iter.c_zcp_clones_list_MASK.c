#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  ds_object; int /*<<< orphan*/  ds_is_snapshot; } ;
typedef  TYPE_1__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_6__ {int /*<<< orphan*/ * zri_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,char*,char const*) ; 
 int /*<<< orphan*/  zcp_clones_iter ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(lua_State *state)
{
	const char *snapname = FUNC3(state, 1);
	dsl_pool_t *dp = FUNC6(state)->zri_pool;

	/*
	 * zcp_dataset_hold will either successfully return the requested
	 * dataset or throw a lua error and longjmp out of the zfs.list.clones
	 * call without returning.
	 */
	dsl_dataset_t *ds = FUNC5(state, dp, snapname, FTAG);
	if (ds == NULL)
		return (1); /* not reached; zcp_dataset_hold() longjmp'd */
	boolean_t issnap = ds->ds_is_snapshot;
	uint64_t cursor = 0;
	uint64_t dsobj = ds->ds_object;
	FUNC0(ds, FTAG);

	if (!issnap) {
		return (FUNC4(state, 1, "%s is not a snapshot",
		    snapname));
	}

	FUNC2(state, dsobj);
	FUNC2(state, cursor);
	FUNC1(state, &zcp_clones_iter, 2);
	return (1);
}