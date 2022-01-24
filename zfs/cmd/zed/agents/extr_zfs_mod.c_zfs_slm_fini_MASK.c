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
struct TYPE_6__ {int /*<<< orphan*/  uap_zhp; } ;
typedef  TYPE_1__ unavailpool_t ;
typedef  TYPE_1__ pendingdev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  g_device_list ; 
 int /*<<< orphan*/  g_pool_list ; 
 int /*<<< orphan*/ * g_tpool ; 
 int /*<<< orphan*/  g_zfs_tid ; 
 int /*<<< orphan*/  g_zfshdl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9()
{
	unavailpool_t *pool;
	pendingdev_t *device;

	/* wait for zfs_enum_pools thread to complete */
	(void) FUNC5(g_zfs_tid, NULL);
	/* destroy the thread pool */
	if (g_tpool != NULL) {
		FUNC7(g_tpool);
		FUNC6(g_tpool);
	}

	while ((pool = (FUNC3(&g_pool_list))) != NULL) {
		FUNC4(&g_pool_list, pool);
		FUNC8(pool->uap_zhp);
		FUNC0(pool);
	}
	FUNC2(&g_pool_list);

	while ((device = (FUNC3(&g_device_list))) != NULL) {
		FUNC4(&g_device_list, device);
		FUNC0(device);
	}
	FUNC2(&g_device_list);

	FUNC1(g_zfshdl);
}