#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
struct TYPE_2__ {scalar_t__ cb_version; void* cb_first; } ;
typedef  TYPE_1__ upgrade_cbdata_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 scalar_t__ SPA_VERSION_FEATURES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_zfs ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  history_str ; 
 void* log_history ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(zpool_handle_t *zhp, void *arg)
{
	upgrade_cbdata_t *cbp = arg;
	nvlist_t *config;
	uint64_t version;
	boolean_t printnl = B_FALSE;
	int ret;

	config = FUNC8(zhp, NULL);
	FUNC7(FUNC3(config, ZPOOL_CONFIG_VERSION,
	    &version) == 0);

	FUNC1(FUNC0(version));

	if (version < cbp->cb_version) {
		cbp->cb_first = B_FALSE;
		ret = FUNC6(zhp, cbp->cb_version);
		if (ret != 0)
			return (ret);
		printnl = B_TRUE;

		/*
		 * If they did "zpool upgrade -a", then we could
		 * be doing ioctls to different pools.  We need
		 * to log this history once to each pool, and bypass
		 * the normal history logging that happens in main().
		 */
		(void) FUNC9(g_zfs, history_str);
		log_history = B_FALSE;
	}

	if (cbp->cb_version >= SPA_VERSION_FEATURES) {
		int count;
		ret = FUNC5(zhp, &count);
		if (ret != 0)
			return (ret);

		if (count > 0) {
			cbp->cb_first = B_FALSE;
			printnl = B_TRUE;
		}
	}

	if (printnl) {
		(void) FUNC4(FUNC2("\n"));
	}

	return (0);
}