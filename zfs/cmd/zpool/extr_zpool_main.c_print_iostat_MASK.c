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
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_4__ {int cb_iteration; int cb_flags; int /*<<< orphan*/ * vcdl; int /*<<< orphan*/  cb_vdev_names_count; scalar_t__ cb_verbose; int /*<<< orphan*/  cb_scripted; } ;
typedef  TYPE_1__ iostat_cbdata_t ;

/* Variables and functions */
 int IOS_ANYHISTO_M ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(zpool_handle_t *zhp, void *data)
{
	iostat_cbdata_t *cb = data;
	nvlist_t *oldconfig, *newconfig;
	nvlist_t *oldnvroot, *newnvroot;
	int ret;

	newconfig = FUNC6(zhp, &oldconfig);

	if (cb->cb_iteration == 1)
		oldconfig = NULL;

	FUNC5(FUNC0(newconfig, ZPOOL_CONFIG_VDEV_TREE,
	    &newnvroot) == 0);

	if (oldconfig == NULL)
		oldnvroot = NULL;
	else
		FUNC5(FUNC0(oldconfig, ZPOOL_CONFIG_VDEV_TREE,
		    &oldnvroot) == 0);

	ret = FUNC3(zhp, FUNC7(zhp), oldnvroot, newnvroot,
	    cb, 0);
	if ((ret != 0) && !(cb->cb_flags & IOS_ANYHISTO_M) &&
	    !cb->cb_scripted && cb->cb_verbose && !cb->cb_vdev_names_count) {
		FUNC2(cb);
		if (cb->vcdl != NULL) {
			FUNC1(cb->vcdl, 1);
		}
		FUNC4("\n");
	}

	return (ret);
}