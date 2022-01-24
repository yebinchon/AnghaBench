#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
struct TYPE_4__ {int /*<<< orphan*/ * uap_zhp; } ;
typedef  TYPE_1__ unavailpool_t ;
typedef  int /*<<< orphan*/  list_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 scalar_t__ VDEV_STATE_DEGRADED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(zpool_handle_t *zhp, void *data)
{
	FUNC2(LOG_INFO, "zfs_unavail_pool: examining '%s' (state %d)",
	    FUNC5(zhp), (int)FUNC3(zhp));

	if (FUNC3(zhp) < VDEV_STATE_DEGRADED) {
		unavailpool_t *uap;
		uap = FUNC1(sizeof (unavailpool_t));
		uap->uap_zhp = zhp;
		FUNC0((list_t *)data, uap);
	} else {
		FUNC4(zhp);
	}
	return (0);
}