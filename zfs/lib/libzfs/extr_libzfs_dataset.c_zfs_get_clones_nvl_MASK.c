#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ zfs_type; int /*<<< orphan*/ * zfs_props; int /*<<< orphan*/  zfs_hdl; int /*<<< orphan*/  zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct get_clones_arg {scalar_t__ numclones; int /*<<< orphan*/  origin; int /*<<< orphan*/ * value; } ;
typedef  int /*<<< orphan*/  pool ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_CLONES ; 
 int /*<<< orphan*/  ZFS_PROP_NUMCLONES ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 scalar_t__ ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct get_clones_arg*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

nvlist_t *
FUNC11(zfs_handle_t *zhp)
{
	nvlist_t *nv, *value;

	if (FUNC4(zhp->zfs_props,
	    FUNC10(ZFS_PROP_CLONES), &nv) != 0) {
		struct get_clones_arg gca;

		/*
		 * if this is a snapshot, then the kernel wasn't able
		 * to get the clones.  Do it by slowly iterating.
		 */
		if (zhp->zfs_type != ZFS_TYPE_SNAPSHOT)
			return (NULL);
		if (FUNC2(&nv, NV_UNIQUE_NAME, 0) != 0)
			return (NULL);
		if (FUNC2(&value, NV_UNIQUE_NAME, 0) != 0) {
			FUNC3(nv);
			return (NULL);
		}

		gca.numclones = FUNC9(zhp, ZFS_PROP_NUMCLONES);
		gca.value = value;
		gca.origin = zhp->zfs_name;

		if (gca.numclones != 0) {
			zfs_handle_t *root;
			char pool[ZFS_MAX_DATASET_NAME_LEN];
			char *cp = pool;

			/* get the pool name */
			(void) FUNC5(pool, zhp->zfs_name, sizeof (pool));
			(void) FUNC6(&cp, "/@");
			root = FUNC8(zhp->zfs_hdl, pool,
			    ZFS_TYPE_FILESYSTEM);
			if (root == NULL) {
				FUNC3(nv);
				FUNC3(value);
				return (NULL);
			}

			(void) FUNC0(root, &gca);
		}

		if (gca.numclones != 0 ||
		    FUNC1(nv, ZPROP_VALUE, value) != 0 ||
		    FUNC1(zhp->zfs_props,
		    FUNC10(ZFS_PROP_CLONES), nv) != 0) {
			FUNC3(nv);
			FUNC3(value);
			return (NULL);
		}
		FUNC3(nv);
		FUNC3(value);
		FUNC7(0 == FUNC4(zhp->zfs_props,
		    FUNC10(ZFS_PROP_CLONES), &nv));
	}

	FUNC7(FUNC4(nv, ZPROP_VALUE, &value) == 0);

	return (value);
}