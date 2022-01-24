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
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  void* uint64_t ;
typedef  int /*<<< orphan*/  pname ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
struct TYPE_7__ {char* name; void** redact_snap_guids; int /*<<< orphan*/ * skip; void* num_redact_snaps; scalar_t__ bookmark_ok; void* guid; } ;
typedef  TYPE_1__ guid_to_name_data_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 void* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ ,TYPE_1__*),TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ ,TYPE_1__*),TYPE_1__*) ; 

__attribute__((used)) static int
FUNC9(libzfs_handle_t *hdl, const char *parent,
    uint64_t guid, boolean_t bookmark_ok, uint64_t *redact_snap_guids,
    uint64_t num_redact_snaps, char *name)
{
	char pname[ZFS_MAX_DATASET_NAME_LEN];
	guid_to_name_data_t gtnd;

	gtnd.guid = guid;
	gtnd.bookmark_ok = bookmark_ok;
	gtnd.name = name;
	gtnd.skip = NULL;
	gtnd.redact_snap_guids = redact_snap_guids;
	gtnd.num_redact_snaps = num_redact_snaps;

	/*
	 * Search progressively larger portions of the hierarchy, starting
	 * with the filesystem specified by 'parent'.  This will
	 * select the "most local" version of the origin snapshot in the case
	 * that there are multiple matching snapshots in the system.
	 */
	(void) FUNC3(pname, parent, sizeof (pname));
	char *cp = FUNC4(pname, '@');
	if (cp == NULL)
		cp = FUNC2(pname, '\0');
	for (; cp != NULL; cp = FUNC4(pname, '/')) {
		/* Chop off the last component and open the parent */
		*cp = '\0';
		zfs_handle_t *zhp = FUNC1(hdl, pname);

		if (zhp == NULL)
			continue;
		int err = FUNC0(FUNC6(zhp), &gtnd);
		if (err != EEXIST)
			err = FUNC8(zhp, guid_to_name_cb, &gtnd);
		if (err != EEXIST && bookmark_ok)
			err = FUNC7(zhp, guid_to_name_cb, &gtnd);
		FUNC5(zhp);
		if (err == EEXIST)
			return (0);

		/*
		 * Remember the last portion of the dataset so we skip it next
		 * time through (as we've already searched that portion of the
		 * hierarchy).
		 */
		gtnd.skip = FUNC4(pname, '/') + 1;
	}

	return (ENOENT);
}