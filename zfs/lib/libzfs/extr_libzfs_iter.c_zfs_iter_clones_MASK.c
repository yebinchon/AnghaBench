#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int (* zfs_iter_f ) (TYPE_1__*,void*) ;
struct TYPE_7__ {int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int ZFS_TYPE_FILESYSTEM ; 
 int ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC4(zfs_handle_t *zhp, zfs_iter_f func, void *data)
{
	nvlist_t *nvl = FUNC2(zhp);
	nvpair_t *pair;

	if (nvl == NULL)
		return (0);

	for (pair = FUNC0(nvl, NULL); pair != NULL;
	    pair = FUNC0(nvl, pair)) {
		zfs_handle_t *clone = FUNC3(zhp->zfs_hdl, FUNC1(pair),
		    ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
		if (clone != NULL) {
			int err = func(clone, data);
			if (err != 0)
				return (err);
		}
	}
	return (0);
}