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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(zpool_handle_t *zhp, int min_width, int flags, boolean_t verbose)
{
	nvlist_t *config, *nvroot;
	int width = min_width;

	if ((config = FUNC5(zhp, NULL)) != NULL) {
		FUNC4(FUNC2(config, ZPOOL_CONFIG_VDEV_TREE,
		    &nvroot) == 0);
		unsigned int poolname_len = FUNC3(FUNC6(zhp));
		if (verbose == B_FALSE) {
			width = FUNC0(poolname_len, min_width);
		} else {
			width = FUNC0(poolname_len,
			    FUNC1(zhp, nvroot, 0, min_width, flags));
		}
	}

	return (width);
}