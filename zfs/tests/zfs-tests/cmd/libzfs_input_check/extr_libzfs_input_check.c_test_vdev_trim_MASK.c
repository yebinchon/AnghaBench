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
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long long POOL_TRIM_START ; 
 int /*<<< orphan*/  ZFS_IOC_POOL_TRIM ; 
 char* ZPOOL_TRIM_COMMAND ; 
 char* ZPOOL_TRIM_RATE ; 
 int /*<<< orphan*/  ZPOOL_TRIM_SECURE ; 
 int /*<<< orphan*/  ZPOOL_TRIM_VDEVS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned long long) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(const char *pool)
{
	nvlist_t *required = FUNC4();
	nvlist_t *optional = FUNC4();
	nvlist_t *vdev_guids = FUNC4();

	FUNC3(vdev_guids, "path", 0xdeadbeefdeadbeef);
	FUNC3(required, ZPOOL_TRIM_COMMAND, POOL_TRIM_START);
	FUNC2(required, ZPOOL_TRIM_VDEVS, vdev_guids);
	FUNC3(optional, ZPOOL_TRIM_RATE, 1ULL << 30);
	FUNC1(optional, ZPOOL_TRIM_SECURE, B_TRUE);

	FUNC0(ZFS_IOC_POOL_TRIM, pool, required, optional, EINVAL);
	FUNC5(vdev_guids);
	FUNC5(optional);
	FUNC5(required);
}