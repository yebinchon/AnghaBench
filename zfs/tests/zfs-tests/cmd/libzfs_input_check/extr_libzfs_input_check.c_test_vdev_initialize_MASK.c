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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int POOL_INITIALIZE_START ; 
 int /*<<< orphan*/  ZFS_IOC_POOL_INITIALIZE ; 
 char* ZPOOL_INITIALIZE_COMMAND ; 
 int /*<<< orphan*/  ZPOOL_INITIALIZE_VDEVS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(const char *pool)
{
	nvlist_t *required = FUNC3();
	nvlist_t *vdev_guids = FUNC3();

	FUNC2(vdev_guids, "path", 0xdeadbeefdeadbeef);
	FUNC2(required, ZPOOL_INITIALIZE_COMMAND,
	    POOL_INITIALIZE_START);
	FUNC1(required, ZPOOL_INITIALIZE_VDEVS, vdev_guids);

	FUNC0(ZFS_IOC_POOL_INITIALIZE, pool, required, NULL, EINVAL);
	FUNC4(vdev_guids);
	FUNC4(required);
}