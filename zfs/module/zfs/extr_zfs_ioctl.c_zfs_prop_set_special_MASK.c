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
typedef  int /*<<< orphan*/  zprop_source_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
typedef  int zfs_prop_t ;
struct TYPE_6__ {int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ DATA_TYPE_NVLIST ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ PROP_TYPE_STRING ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  ZFS_PROP_FILESYSTEM_LIMIT 138 
#define  ZFS_PROP_KEYLOCATION 137 
#define  ZFS_PROP_QUOTA 136 
#define  ZFS_PROP_REFQUOTA 135 
#define  ZFS_PROP_REFRESERVATION 134 
#define  ZFS_PROP_RESERVATION 133 
#define  ZFS_PROP_SNAPDEV 132 
#define  ZFS_PROP_SNAPSHOT_LIMIT 131 
#define  ZFS_PROP_VERSION 130 
#define  ZFS_PROP_VOLMODE 129 
#define  ZFS_PROP_VOLSIZE 128 
 int /*<<< orphan*/  ZPL_VERSION_USERSPACE ; 
 int ZPROP_INVAL ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 int FUNC1 (char const*,char*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC10 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int FUNC18 (char const*) ; 
 scalar_t__ FUNC19 (int) ; 
 int FUNC20 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (char const*) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC23 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC25 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC26 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC27 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC28(const char *dsname, zprop_source_t source,
    nvpair_t *pair)
{
	const char *propname = FUNC12(pair);
	zfs_prop_t prop = FUNC18(propname);
	uint64_t intval = 0;
	char *strval = NULL;
	int err = -1;

	if (prop == ZPROP_INVAL) {
		if (FUNC21(propname))
			return (FUNC20(dsname, pair));
		return (-1);
	}

	if (FUNC13(pair) == DATA_TYPE_NVLIST) {
		nvlist_t *attrs;
		FUNC0(FUNC14(pair, &attrs) == 0);
		FUNC0(FUNC11(attrs, ZPROP_VALUE,
		    &pair) == 0);
	}

	/* all special properties are numeric except for keylocation */
	if (FUNC19(prop) == PROP_TYPE_STRING) {
		strval = FUNC7(pair);
	} else {
		intval = FUNC8(pair);
	}

	switch (prop) {
	case ZFS_PROP_QUOTA:
		err = FUNC5(dsname, source, intval);
		break;
	case ZFS_PROP_REFQUOTA:
		err = FUNC2(dsname, source, intval);
		break;
	case ZFS_PROP_FILESYSTEM_LIMIT:
	case ZFS_PROP_SNAPSHOT_LIMIT:
		if (intval == UINT64_MAX) {
			/* clearing the limit, just do it */
			err = 0;
		} else {
			err = FUNC4(dsname);
		}
		/*
		 * Set err to -1 to force the zfs_set_prop_nvlist code down the
		 * default path to set the value in the nvlist.
		 */
		if (err == 0)
			err = -1;
		break;
	case ZFS_PROP_KEYLOCATION:
		err = FUNC1(dsname, strval);

		/*
		 * Set err to -1 to force the zfs_set_prop_nvlist code down the
		 * default path to set the value in the nvlist.
		 */
		if (err == 0)
			err = -1;
		break;
	case ZFS_PROP_RESERVATION:
		err = FUNC6(dsname, source, intval);
		break;
	case ZFS_PROP_REFRESERVATION:
		err = FUNC3(dsname, source, intval);
		break;
	case ZFS_PROP_VOLSIZE:
		err = FUNC27(dsname, intval);
		break;
	case ZFS_PROP_SNAPDEV:
		err = FUNC25(dsname, source, intval);
		break;
	case ZFS_PROP_VOLMODE:
		err = FUNC26(dsname, source, intval);
		break;
	case ZFS_PROP_VERSION:
	{
		zfsvfs_t *zfsvfs;

		if ((err = FUNC23(dsname, FTAG, &zfsvfs, B_TRUE)) != 0)
			break;

		err = FUNC22(zfsvfs, intval);
		FUNC24(zfsvfs, FTAG);

		if (err == 0 && intval >= ZPL_VERSION_USERSPACE) {
			zfs_cmd_t *zc;

			zc = FUNC10(sizeof (zfs_cmd_t), KM_SLEEP);
			(void) FUNC15(zc->zc_name, dsname);
			(void) FUNC17(zc);
			(void) FUNC16(zc);
			FUNC9(zc, sizeof (zfs_cmd_t));
		}
		break;
	}
	default:
		err = -1;
	}

	return (err);
}