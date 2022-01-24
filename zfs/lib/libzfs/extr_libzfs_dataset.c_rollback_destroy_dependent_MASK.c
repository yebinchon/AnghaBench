#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_8__ {void* cb_error; scalar_t__ cb_force; } ;
typedef  TYPE_2__ rollback_data_t ;
typedef  int /*<<< orphan*/  prop_changelist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  MS_FORCE ; 
 int /*<<< orphan*/  ZFS_PROP_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(zfs_handle_t *zhp, void *data)
{
	rollback_data_t *cbp = data;
	prop_changelist_t *clp;

	/* We must destroy this clone; first unmount it */
	clp = FUNC1(zhp, ZFS_PROP_NAME, 0,
	    cbp->cb_force ? MS_FORCE: 0);
	if (clp == NULL || FUNC3(clp) != 0) {
		cbp->cb_error = B_TRUE;
		FUNC5(zhp);
		return (0);
	}
	if (FUNC6(zhp, B_FALSE) != 0)
		cbp->cb_error = B_TRUE;
	else
		FUNC4(clp, zhp->zfs_name);
	(void) FUNC2(clp);
	FUNC0(clp);

	FUNC5(zhp);
	return (0);
}