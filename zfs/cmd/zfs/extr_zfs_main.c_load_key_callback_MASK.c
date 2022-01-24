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
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  cb_numfailed; int /*<<< orphan*/  cb_keylocation; int /*<<< orphan*/  cb_noop; scalar_t__ cb_loadkey; int /*<<< orphan*/  cb_numattempted; scalar_t__ cb_recursive; } ;
typedef  TYPE_1__ loadkey_cbdata_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 scalar_t__ ZFS_KEYSTATUS_AVAILABLE ; 
 scalar_t__ ZFS_KEYSTATUS_UNAVAILABLE ; 
 int /*<<< orphan*/  ZFS_PROP_KEYSTATUS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(zfs_handle_t *zhp, void *data)
{
	int ret;
	boolean_t is_encroot;
	loadkey_cbdata_t *cb = data;
	uint64_t keystatus = FUNC3(zhp, ZFS_PROP_KEYSTATUS);

	/*
	 * If we are working recursively, we want to skip loading / unloading
	 * keys for non-encryption roots and datasets whose keys are already
	 * in the desired end-state.
	 */
	if (cb->cb_recursive) {
		ret = FUNC0(zhp, &is_encroot, NULL);
		if (ret != 0)
			return (ret);
		if (!is_encroot)
			return (0);

		if ((cb->cb_loadkey && keystatus == ZFS_KEYSTATUS_AVAILABLE) ||
		    (!cb->cb_loadkey && keystatus == ZFS_KEYSTATUS_UNAVAILABLE))
			return (0);
	}

	cb->cb_numattempted++;

	if (cb->cb_loadkey)
		ret = FUNC1(zhp, cb->cb_noop, cb->cb_keylocation);
	else
		ret = FUNC2(zhp);

	if (ret != 0) {
		cb->cb_numfailed++;
		return (ret);
	}

	return (0);
}