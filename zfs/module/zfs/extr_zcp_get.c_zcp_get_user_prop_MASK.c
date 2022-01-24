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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  ZAP_MAXVALUELEN ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,char const*,int) ; 

__attribute__((used)) static int
FUNC7(lua_State *state, dsl_pool_t *dp, const char *dataset_name,
    const char *property_name)
{
	int error;
	char *buf;
	char setpoint[ZFS_MAX_DATASET_NAME_LEN];
	/*
	 * zcp_dataset_hold will either successfully return the requested
	 * dataset or throw a lua error and longjmp out of the zfs.get_prop call
	 * without returning.
	 */
	dsl_dataset_t *ds = FUNC5(state, dp, dataset_name, FTAG);
	if (ds == NULL)
		return (1); /* not reached; zcp_dataset_hold() longjmp'd */

	buf = FUNC2(ZAP_MAXVALUELEN, KM_SLEEP);
	error = FUNC1(ds, property_name, 1, ZAP_MAXVALUELEN,
	    buf, setpoint);
	FUNC0(ds, FTAG);

	if (error != 0) {
		FUNC3(buf, ZAP_MAXVALUELEN);
		return (FUNC6(state, dataset_name, property_name,
		    error));
	}
	(void) FUNC4(state, buf);
	(void) FUNC4(state, setpoint);
	FUNC3(buf, ZAP_MAXVALUELEN);
	return (2);
}