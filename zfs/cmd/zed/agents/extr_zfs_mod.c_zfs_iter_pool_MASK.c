#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
struct TYPE_8__ {int /*<<< orphan*/ * uap_zhp; } ;
typedef  TYPE_1__ unavailpool_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_9__ {char* dd_prop; scalar_t__ dd_pool_guid; int dd_found; scalar_t__ dd_vdev_guid; } ;
typedef  TYPE_2__ dev_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 scalar_t__ VDEV_STATE_DEGRADED ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 scalar_t__ g_enumeration_done ; 
 int /*<<< orphan*/  g_pool_list ; 
 int /*<<< orphan*/  g_tpool ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  zfs_enable_ds ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(zpool_handle_t *zhp, void *data)
{
	nvlist_t *config, *nvl;
	dev_data_t *dp = data;
	uint64_t pool_guid;
	unavailpool_t *pool;

	FUNC7(LOG_INFO, "zfs_iter_pool: evaluating vdevs on %s (by %s)",
	    FUNC12(zhp), dp->dd_vdev_guid ? "GUID" : dp->dd_prop);

	/*
	 * For each vdev in this pool, look for a match to apply dd_func
	 */
	if ((config = FUNC11(zhp, NULL)) != NULL) {
		if (dp->dd_pool_guid == 0 ||
		    (FUNC4(config, ZPOOL_CONFIG_POOL_GUID,
		    &pool_guid) == 0 && pool_guid == dp->dd_pool_guid)) {
			(void) FUNC3(config,
			    ZPOOL_CONFIG_VDEV_TREE, &nvl);
			FUNC8(zhp, nvl, data);
		}
	}

	/*
	 * if this pool was originally unavailable,
	 * then enable its datasets asynchronously
	 */
	if (g_enumeration_done)  {
		for (pool = FUNC0(&g_pool_list); pool != NULL;
		    pool = FUNC1(&g_pool_list, pool)) {

			if (FUNC5(FUNC12(zhp),
			    FUNC12(pool->uap_zhp)))
				continue;
			if (FUNC9(zhp) >= VDEV_STATE_DEGRADED) {
				FUNC2(&g_pool_list, pool);
				(void) FUNC6(g_tpool, zfs_enable_ds,
				    pool);
				break;
			}
		}
	}

	FUNC10(zhp);
	return (dp->dd_found);	/* cease iteration after a match */
}