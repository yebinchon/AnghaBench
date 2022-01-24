#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  DCP_CMD_FORCE_NEW_KEY ; 
 int EACCES ; 
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,char const*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(zfs_handle_t *zhp, const char *name, const char *newname)
{
	int err;
	zfs_handle_t *ozhp = NULL;

	/*
	 * Attempt to rename the dataset. If it fails with EACCES we have
	 * attempted to rename the dataset outside of its encryption root.
	 * Force the dataset to become an encryption root and try again.
	 */
	err = FUNC1(name, newname);
	if (err == EACCES) {
		ozhp = FUNC2(zhp);
		if (ozhp == NULL) {
			err = ENOENT;
			goto out;
		}

		err = FUNC0(ozhp->zfs_name, DCP_CMD_FORCE_NEW_KEY,
		    NULL, NULL, 0);
		if (err != 0)
			goto out;

		err = FUNC1(name, newname);
	}

out:
	if (ozhp != NULL)
		FUNC3(ozhp);
	return (err);
}