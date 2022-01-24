#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int (* zfs_iter_f ) (TYPE_1__*,void*) ;
struct TYPE_10__ {int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_11__ {int (* ssa_func ) (TYPE_1__*,void*) ;char* ssa_first; char* ssa_last; int /*<<< orphan*/  ssa_seenlast; int /*<<< orphan*/  ssa_seenfirst; void* ssa_arg; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ snapspec_arg_t ;
typedef  int /*<<< orphan*/  snapname ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int ENOENT ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  snapspec_cb ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char**,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char const*) ; 

int
FUNC9(zfs_handle_t *fs_zhp, const char *spec_orig,
    zfs_iter_f func, void *arg)
{
	char *buf, *comma_separated, *cp;
	int err = 0;
	int ret = 0;

	buf = FUNC8(fs_zhp->zfs_hdl, spec_orig);
	cp = buf;

	while ((comma_separated = FUNC4(&cp, ",")) != NULL) {
		char *pct = FUNC3(comma_separated, '%');
		if (pct != NULL) {
			snapspec_arg_t ssa = { 0 };
			ssa.ssa_func = func;
			ssa.ssa_arg = arg;

			if (pct == comma_separated)
				ssa.ssa_seenfirst = B_TRUE;
			else
				ssa.ssa_first = comma_separated;
			*pct = '\0';
			ssa.ssa_last = pct + 1;

			/*
			 * If there is a lastname specified, make sure it
			 * exists.
			 */
			if (ssa.ssa_last[0] != '\0') {
				char snapname[ZFS_MAX_DATASET_NAME_LEN];
				(void) FUNC2(snapname, sizeof (snapname),
				    "%s@%s", FUNC6(fs_zhp),
				    ssa.ssa_last);
				if (!FUNC5(fs_zhp->zfs_hdl,
				    snapname, ZFS_TYPE_SNAPSHOT)) {
					ret = ENOENT;
					continue;
				}
			}

			err = FUNC7(fs_zhp,
			    snapspec_cb, &ssa, 0, 0);
			if (ret == 0)
				ret = err;
			if (ret == 0 && (!ssa.ssa_seenfirst ||
			    (ssa.ssa_last[0] != '\0' && !ssa.ssa_seenlast))) {
				ret = ENOENT;
			}
		} else {
			char snapname[ZFS_MAX_DATASET_NAME_LEN];
			zfs_handle_t *snap_zhp;
			(void) FUNC2(snapname, sizeof (snapname), "%s@%s",
			    FUNC6(fs_zhp), comma_separated);
			snap_zhp = FUNC1(fs_zhp->zfs_hdl,
			    snapname);
			if (snap_zhp == NULL) {
				ret = ENOENT;
				continue;
			}
			err = func(snap_zhp, arg);
			if (ret == 0)
				ret = err;
		}
	}

	FUNC0(buf);
	return (ret);
}