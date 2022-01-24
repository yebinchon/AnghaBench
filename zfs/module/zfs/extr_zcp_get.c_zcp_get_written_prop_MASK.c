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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*,char*,int) ; 

__attribute__((used)) static int
FUNC9(lua_State *state, dsl_pool_t *dp,
    const char *dataset_name, const char *prop_name)
{
	char snap_name[ZFS_MAX_DATASET_NAME_LEN];
	uint64_t used, comp, uncomp;
	dsl_dataset_t *old;
	int error = 0;

	FUNC5(dataset_name, prop_name, snap_name);
	dsl_dataset_t *new = FUNC6(state, dp, dataset_name, FTAG);
	if (new == NULL)
		return (1); /* not reached; zcp_dataset_hold() longjmp'd */

	error = FUNC0(dp, snap_name, FTAG, &old);
	if (error != 0) {
		FUNC1(new, FTAG);
		return (FUNC7(state, dp, snap_name,
		    error));
	}
	error = FUNC2(old, new,
	    &used, &comp, &uncomp);

	FUNC1(old, FTAG);
	FUNC1(new, FTAG);

	if (error != 0) {
		return (FUNC8(state, dataset_name,
		    snap_name, error));
	}
	(void) FUNC3(state, used);
	(void) FUNC4(state, dataset_name);
	return (2);
}