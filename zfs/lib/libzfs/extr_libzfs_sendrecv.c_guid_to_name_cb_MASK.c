#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_15__ {scalar_t__ guid; int num_redact_snaps; scalar_t__ bookmark_ok; int /*<<< orphan*/  name; int /*<<< orphan*/ * skip; } ;
typedef  TYPE_2__ guid_to_name_data_t ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  ZFS_PROP_GUID ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int (*) (TYPE_1__*,void*),TYPE_2__*) ; 
 int FUNC6 (TYPE_1__*,int (*) (TYPE_1__*,void*),TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(zfs_handle_t *zhp, void *arg)
{
	guid_to_name_data_t *gtnd = arg;
	const char *slash;
	int err;

	if (gtnd->skip != NULL &&
	    (slash = FUNC3(zhp->zfs_name, '/')) != NULL &&
	    FUNC1(slash + 1, gtnd->skip) == 0) {
		FUNC4(zhp);
		return (0);
	}

	if (FUNC7(zhp, ZFS_PROP_GUID) == gtnd->guid &&
	    (gtnd->num_redact_snaps == -1 || FUNC0(zhp, gtnd))) {
		(void) FUNC2(gtnd->name, zhp->zfs_name);
		FUNC4(zhp);
		return (EEXIST);
	}

	err = FUNC6(zhp, guid_to_name_cb, gtnd);
	if (err != EEXIST && gtnd->bookmark_ok)
		err = FUNC5(zhp, guid_to_name_cb, gtnd);
	FUNC4(zhp);
	return (err);
}