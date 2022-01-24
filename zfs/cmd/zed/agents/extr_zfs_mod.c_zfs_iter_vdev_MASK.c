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
typedef  size_t uint_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_2__ {scalar_t__ dd_vdev_guid; int /*<<< orphan*/  dd_islabeled; int /*<<< orphan*/  (* dd_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * dd_new_devid; void* dd_found; int /*<<< orphan*/  dd_prop; int /*<<< orphan*/ * dd_compare; } ;
typedef  TYPE_1__ dev_data_t ;

/* Variables and functions */
 void* B_TRUE ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_L2CACHE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPARES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 

__attribute__((used)) static void
FUNC7(zpool_handle_t *zhp, nvlist_t *nvl, void *data)
{
	dev_data_t *dp = data;
	char *path = NULL;
	uint_t c, children;
	nvlist_t **child;

	/*
	 * First iterate over any children.
	 */
	if (FUNC1(nvl, ZPOOL_CONFIG_CHILDREN,
	    &child, &children) == 0) {
		for (c = 0; c < children; c++)
			FUNC7(zhp, child[c], data);
	}

	/*
	 * Iterate over any spares and cache devices
	 */
	if (FUNC1(nvl, ZPOOL_CONFIG_SPARES,
	    &child, &children) == 0) {
		for (c = 0; c < children; c++)
			FUNC7(zhp, child[c], data);
	}
	if (FUNC1(nvl, ZPOOL_CONFIG_L2CACHE,
	    &child, &children) == 0) {
		for (c = 0; c < children; c++)
			FUNC7(zhp, child[c], data);
	}

	/* once a vdev was matched and processed there is nothing left to do */
	if (dp->dd_found)
		return;

	/*
	 * Match by GUID if available otherwise fallback to devid or physical
	 */
	if (dp->dd_vdev_guid != 0) {
		uint64_t guid;

		if (FUNC3(nvl, ZPOOL_CONFIG_GUID,
		    &guid) != 0 || guid != dp->dd_vdev_guid) {
			return;
		}
		FUNC6(LOG_INFO, "  zfs_iter_vdev: matched on %llu", guid);
		dp->dd_found = B_TRUE;

	} else if (dp->dd_compare != NULL) {
		/*
		 * NOTE: On Linux there is an event for partition, so unlike
		 * illumos, substring matching is not required to accommodate
		 * the partition suffix. An exact match will be present in
		 * the dp->dd_compare value.
		 */
		if (FUNC2(nvl, dp->dd_prop, &path) != 0 ||
		    FUNC4(dp->dd_compare, path) != 0)
			return;

		FUNC6(LOG_INFO, "  zfs_iter_vdev: matched %s on %s",
		    dp->dd_prop, path);
		dp->dd_found = B_TRUE;

		/* pass the new devid for use by replacing code */
		if (dp->dd_new_devid != NULL) {
			(void) FUNC0(nvl, "new_devid",
			    dp->dd_new_devid);
		}
	}

	(dp->dd_func)(zhp, nvl, dp->dd_islabeled);
}