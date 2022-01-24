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
typedef  scalar_t__ zpool_status_t ;
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  zpool_errata_t ;
struct TYPE_2__ {int /*<<< orphan*/  vs_aux; int /*<<< orphan*/  vs_state; } ;
typedef  TYPE_1__ vdev_stat_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 scalar_t__ POOL_STATE_UNAVAIL ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_STATS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 scalar_t__ ZPOOL_STATUS_IO_FAILURE_MMP ; 
 scalar_t__ ZPOOL_STATUS_IO_FAILURE_WAIT ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char *
FUNC8(zpool_handle_t *zhp)
{
	zpool_errata_t errata;
	zpool_status_t status;
	nvlist_t *nvroot;
	vdev_stat_t *vs;
	uint_t vsc;
	const char *str;

	status = FUNC6(zhp, NULL, &errata);

	if (FUNC5(zhp) == POOL_STATE_UNAVAIL) {
		str = FUNC0("FAULTED");
	} else if (status == ZPOOL_STATUS_IO_FAILURE_WAIT ||
	    status == ZPOOL_STATUS_IO_FAILURE_MMP) {
		str = FUNC0("SUSPENDED");
	} else {
		FUNC3(FUNC1(FUNC4(zhp, NULL),
		    ZPOOL_CONFIG_VDEV_TREE, &nvroot) == 0);
		FUNC3(FUNC2(nvroot,
		    ZPOOL_CONFIG_VDEV_STATS, (uint64_t **)&vs, &vsc)
		    == 0);
		str = FUNC7(vs->vs_state, vs->vs_aux);
	}
	return (str);
}