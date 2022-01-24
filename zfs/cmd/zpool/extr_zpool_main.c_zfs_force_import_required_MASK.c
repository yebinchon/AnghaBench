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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ mmp_state_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ MMP_STATE_INACTIVE ; 
 scalar_t__ POOL_STATE_EXPORTED ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_HOSTID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_LOAD_INFO ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_STATE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_STATE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static boolean_t
FUNC5(nvlist_t *config)
{
	uint64_t state;
	uint64_t hostid = 0;
	nvlist_t *nvinfo;

	state = FUNC1(config, ZPOOL_CONFIG_POOL_STATE);
	(void) FUNC4(config, ZPOOL_CONFIG_HOSTID, &hostid);

	if (state != POOL_STATE_EXPORTED && hostid != FUNC2())
		return (B_TRUE);

	nvinfo = FUNC0(config, ZPOOL_CONFIG_LOAD_INFO);
	if (FUNC3(nvinfo, ZPOOL_CONFIG_MMP_STATE)) {
		mmp_state_t mmp_state = FUNC1(nvinfo,
		    ZPOOL_CONFIG_MMP_STATE);

		if (mmp_state != MMP_STATE_INACTIVE)
			return (B_TRUE);
	}

	return (B_FALSE);
}