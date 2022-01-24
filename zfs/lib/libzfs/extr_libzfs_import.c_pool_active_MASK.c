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
struct TYPE_4__ {int /*<<< orphan*/  zpool_config; } ;
typedef  TYPE_1__ zpool_handle_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int B_FALSE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,TYPE_1__**) ; 

__attribute__((used)) static int
FUNC4(libzfs_handle_t *hdl, const char *name, uint64_t guid,
    boolean_t *isactive)
{
	zpool_handle_t *zhp;
	uint64_t theguid;

	if (FUNC3(hdl, name, &zhp) != 0)
		return (-1);

	if (zhp == NULL) {
		*isactive = B_FALSE;
		return (0);
	}

	FUNC1(FUNC0(zhp->zpool_config, ZPOOL_CONFIG_POOL_GUID,
	    &theguid) == 0);

	FUNC2(zhp);

	*isactive = (theguid == guid);
	return (0);
}