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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libpc_handle_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,char**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC3(libpc_handle_t *hdl, nvlist_t *label, char **path, char **devid)
{
	nvlist_t *nvroot;
	uint64_t pool_guid;
	uint64_t vdev_guid;

	*path = NULL;
	*devid = NULL;

	if (FUNC1(label, ZPOOL_CONFIG_VDEV_TREE, &nvroot) ||
	    FUNC2(label, ZPOOL_CONFIG_POOL_GUID, &pool_guid) ||
	    FUNC2(label, ZPOOL_CONFIG_GUID, &vdev_guid))
		return (ENOENT);

	return (FUNC0(hdl, nvroot, pool_guid, vdev_guid, path,
	    devid));
}