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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  pool_vdev_iter_f ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC4(zpool_handle_t *zhp, pool_vdev_iter_f func, void *data)
{
	nvlist_t *config, *nvroot = NULL;

	if ((config = FUNC3(zhp, NULL)) != NULL) {
		FUNC2(FUNC1(config, ZPOOL_CONFIG_VDEV_TREE,
		    &nvroot) == 0);
	}
	return (FUNC0(zhp, nvroot, func, data));
}