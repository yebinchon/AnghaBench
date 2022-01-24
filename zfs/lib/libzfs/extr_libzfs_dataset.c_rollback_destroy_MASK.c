#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_3__ {scalar_t__ cb_create; int /*<<< orphan*/  cb_error; } ;
typedef  TYPE_1__ rollback_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  ZFS_PROP_CREATETXG ; 
 int /*<<< orphan*/  rollback_destroy_dependent ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(zfs_handle_t *zhp, void *data)
{
	rollback_data_t *cbp = data;

	if (FUNC3(zhp, ZFS_PROP_CREATETXG) > cbp->cb_create) {
		cbp->cb_error |= FUNC2(zhp, B_FALSE,
		    rollback_destroy_dependent, cbp);

		cbp->cb_error |= FUNC1(zhp, B_FALSE);
	}

	FUNC0(zhp);
	return (0);
}