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
typedef  int zfs_prop_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
#define  ZFS_PROP_FILESYSTEM_LIMIT 132 
#define  ZFS_PROP_MLSLABEL 131 
#define  ZFS_PROP_QUOTA 130 
#define  ZFS_PROP_SNAPSHOT_LIMIT 129 
#define  ZFS_PROP_ZONED 128 
 int /*<<< orphan*/  curproc ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int const) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(const char *dsname, zfs_prop_t prop, nvpair_t *propval,
    cred_t *cr)
{
	char *strval;

	/*
	 * Check permissions for special properties.
	 */
	switch (prop) {
	default:
		break;
	case ZFS_PROP_ZONED:
		/*
		 * Disallow setting of 'zoned' from within a local zone.
		 */
		if (!FUNC1(curproc))
			return (FUNC2(EPERM));
		break;

	case ZFS_PROP_QUOTA:
	case ZFS_PROP_FILESYSTEM_LIMIT:
	case ZFS_PROP_SNAPSHOT_LIMIT:
		if (!FUNC1(curproc)) {
			uint64_t zoned;
			char setpoint[ZFS_MAX_DATASET_NAME_LEN];
			/*
			 * Unprivileged users are allowed to modify the
			 * limit on things *under* (ie. contained by)
			 * the thing they own.
			 */
			if (FUNC3(dsname,
			    FUNC7(ZFS_PROP_ZONED), &zoned, setpoint))
				return (FUNC2(EPERM));
			if (!zoned || FUNC6(dsname) <= FUNC6(setpoint))
				return (FUNC2(EPERM));
		}
		break;

	case ZFS_PROP_MLSLABEL:
		if (!FUNC4())
			return (FUNC2(EPERM));

		if (FUNC5(propval, &strval) == 0) {
			int err;

			err = FUNC9(dsname, strval, FUNC0());
			if (err != 0)
				return (err);
		}
		break;
	}

	return (FUNC8(dsname, FUNC7(prop), cr));
}