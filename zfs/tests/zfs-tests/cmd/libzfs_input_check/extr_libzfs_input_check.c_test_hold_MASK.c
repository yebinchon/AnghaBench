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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_IOC_HOLD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_fd ; 

__attribute__((used)) static void
FUNC6(const char *pool, const char *snapshot)
{
	nvlist_t *required = FUNC4();
	nvlist_t *optional = FUNC4();
	nvlist_t *holds = FUNC4();

	FUNC3(holds, snapshot, "libzfs_check_hold");
	FUNC2(required, "holds", holds);
	FUNC1(optional, "cleanup_fd", zfs_fd);

	FUNC0(ZFS_IOC_HOLD, pool, required, optional, 0);

	FUNC5(holds);
	FUNC5(optional);
	FUNC5(required);
}