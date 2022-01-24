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
typedef  int /*<<< orphan*/  zpool_wait_activity_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_IOC_WAIT ; 
 int /*<<< orphan*/  ZPOOL_WAIT_ACTIVITY ; 
 int /*<<< orphan*/  ZPOOL_WAIT_TAG ; 
 int /*<<< orphan*/  ZPOOL_WAIT_WAITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC6(const char *pool, zpool_wait_activity_t activity, boolean_t use_tag,
    uint64_t tag, boolean_t *waited)
{
	nvlist_t *args = FUNC2();
	nvlist_t *result = NULL;

	FUNC0(args, ZPOOL_WAIT_ACTIVITY, activity);
	if (use_tag)
		FUNC1(args, ZPOOL_WAIT_TAG, tag);

	int error = FUNC5(ZFS_IOC_WAIT, pool, args, &result);

	if (error == 0 && waited != NULL)
		*waited = FUNC4(result,
		    ZPOOL_WAIT_WAITED);

	FUNC3(args);
	FUNC3(result);

	return (error);
}