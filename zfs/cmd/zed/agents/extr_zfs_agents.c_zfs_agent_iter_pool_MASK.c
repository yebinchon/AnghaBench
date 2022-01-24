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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_3__ {scalar_t__ gs_vdev_guid; int /*<<< orphan*/  gs_pool_guid; } ;
typedef  TYPE_1__ guid_search_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(zpool_handle_t *zhp, void *arg)
{
	guid_search_t *gsp = arg;
	nvlist_t *config, *nvl;

	/*
	 * For each vdev in this pool, look for a match by devid
	 */
	if ((config = FUNC4(zhp, NULL)) != NULL) {
		if (FUNC0(config, ZPOOL_CONFIG_VDEV_TREE,
		    &nvl) == 0) {
			(void) FUNC2(zhp, nvl, gsp);
		}
	}
	/*
	 * if a match was found then grab the pool guid
	 */
	if (gsp->gs_vdev_guid) {
		(void) FUNC1(config, ZPOOL_CONFIG_POOL_GUID,
		    &gsp->gs_pool_guid);
	}

	FUNC3(zhp);
	return (gsp->gs_vdev_guid != 0);
}