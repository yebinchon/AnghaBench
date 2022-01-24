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
struct TYPE_6__ {char* zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct holdarg {char* snapname; scalar_t__ recursive; int /*<<< orphan*/  nvl; int /*<<< orphan*/  tag; void* error; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 void* EINVAL ; 
 void* ENOENT ; 
 void* ESRCH ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int (*) (TYPE_1__*,void*),struct holdarg*) ; 

__attribute__((used)) static int
FUNC9(zfs_handle_t *zhp, void *arg)
{
	struct holdarg *ha = arg;
	char name[ZFS_MAX_DATASET_NAME_LEN];
	int rv = 0;
	nvlist_t *existing_holds;

	if (FUNC6(name, sizeof (name), "%s@%s", zhp->zfs_name,
	    ha->snapname) >= sizeof (name)) {
		ha->error = EINVAL;
		rv = EINVAL;
	}

	if (FUNC4(name, &existing_holds) != 0) {
		ha->error = ENOENT;
	} else if (!FUNC5(existing_holds, ha->tag)) {
		ha->error = ESRCH;
	} else {
		nvlist_t *torelease = FUNC2();
		FUNC0(torelease, ha->tag);
		FUNC1(ha->nvl, name, torelease);
		FUNC3(torelease);
	}

	if (ha->recursive)
		rv = FUNC8(zhp, zfs_release_one, ha);
	FUNC7(zhp);
	return (rv);
}