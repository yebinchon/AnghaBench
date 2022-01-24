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
struct TYPE_2__ {int /*<<< orphan*/ * cb_zhp; int /*<<< orphan*/  cb_guid; } ;
typedef  TYPE_1__ spare_cbdata_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(zpool_handle_t *zhp, void *data)
{
	spare_cbdata_t *cbp = data;
	nvlist_t *config, *nvroot;

	config = FUNC4(zhp, NULL);
	FUNC2(FUNC1(config, ZPOOL_CONFIG_VDEV_TREE,
	    &nvroot) == 0);

	if (FUNC0(nvroot, cbp->cb_guid)) {
		cbp->cb_zhp = zhp;
		return (1);
	}

	FUNC3(zhp);
	return (0);
}