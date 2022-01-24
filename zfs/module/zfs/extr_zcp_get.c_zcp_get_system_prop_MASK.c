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
typedef  int /*<<< orphan*/  zfs_prop_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,char const*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(lua_State *state, dsl_pool_t *dp, const char *dataset_name,
    zfs_prop_t zfs_prop)
{
	int error;
	/*
	 * zcp_dataset_hold will either successfully return the requested
	 * dataset or throw a lua error and longjmp out of the zfs.get_prop call
	 * without returning.
	 */
	dsl_dataset_t *ds = FUNC4(state, dp, dataset_name, FTAG);
	if (ds == NULL)
		return (1); /* not reached; zcp_dataset_hold() longjmp'd */

	/* Check that the property is valid for the given dataset */
	const char *prop_name = FUNC6(zfs_prop);
	if (!FUNC3(ds, zfs_prop)) {
		FUNC0(ds, FTAG);
		return (0);
	}

	/* Check if the property can be accessed directly */
	error = FUNC1(state, ds, dataset_name, zfs_prop);
	if (error == 0) {
		FUNC0(ds, FTAG);
		/* The value and source have been pushed by get_special_prop */
		return (2);
	}
	if (error != ENOENT) {
		FUNC0(ds, FTAG);
		return (FUNC5(state, dataset_name,
		    prop_name, error));
	}

	/* If we were unable to find it, look in the zap object */
	error = FUNC2(state, ds, zfs_prop);
	FUNC0(ds, FTAG);
	if (error != 0) {
		return (FUNC5(state, dataset_name,
		    prop_name, error));
	}
	/* The value and source have been pushed by get_zap_prop */
	return (2);
}