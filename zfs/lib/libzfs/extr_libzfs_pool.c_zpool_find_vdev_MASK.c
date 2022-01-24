#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  zpool_config; } ;
typedef  TYPE_1__ zpool_handle_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_PATH ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TYPE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (char const*) ; 

nvlist_t *
FUNC9(zpool_handle_t *zhp, const char *path, boolean_t *avail_spare,
    boolean_t *l2cache, boolean_t *log)
{
	char *end;
	nvlist_t *nvroot, *search, *ret;
	uint64_t guid;

	FUNC7(FUNC2(&search, NV_UNIQUE_NAME, KM_SLEEP) == 0);

	guid = FUNC5(path, &end, 0);
	if (guid != 0 && *end == '\0') {
		FUNC7(FUNC1(search, ZPOOL_CONFIG_GUID, guid) == 0);
	} else if (FUNC8(path)) {
		FUNC7(FUNC0(search, ZPOOL_CONFIG_TYPE, path) == 0);
	} else {
		FUNC7(FUNC0(search, ZPOOL_CONFIG_PATH, path) == 0);
	}

	FUNC7(FUNC4(zhp->zpool_config, ZPOOL_CONFIG_VDEV_TREE,
	    &nvroot) == 0);

	*avail_spare = B_FALSE;
	*l2cache = B_FALSE;
	if (log != NULL)
		*log = B_FALSE;
	ret = FUNC6(nvroot, search, avail_spare, l2cache, log);
	FUNC3(search);

	return (ret);
}