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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
struct TYPE_3__ {int /*<<< orphan*/ * cb_zhp; int /*<<< orphan*/  cb_guid; } ;
typedef  TYPE_1__ find_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int /*<<< orphan*/  find_pool ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static zpool_handle_t *
FUNC5(libzfs_handle_t *zhdl, uint64_t pool_guid, uint64_t vdev_guid,
    nvlist_t **vdevp)
{
	find_cbdata_t cb;
	zpool_handle_t *zhp;
	nvlist_t *config, *nvroot;

	/*
	 * Find the corresponding pool and make sure the vdev still exists.
	 */
	cb.cb_guid = pool_guid;
	if (FUNC4(zhdl, find_pool, &cb) != 1)
		return (NULL);

	zhp = cb.cb_zhp;
	config = FUNC3(zhp, NULL);
	if (FUNC1(config, ZPOOL_CONFIG_VDEV_TREE,
	    &nvroot) != 0) {
		FUNC2(zhp);
		return (NULL);
	}

	if (vdev_guid != 0) {
		if ((*vdevp = FUNC0(zhdl, nvroot, vdev_guid)) == NULL) {
			FUNC2(zhp);
			return (NULL);
		}
	}

	return (zhp);
}