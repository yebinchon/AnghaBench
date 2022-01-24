#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int zpool_prop_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int spa_failmode; int /*<<< orphan*/  spa_root_vdev; int /*<<< orphan*/  spa_hostid; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DATA_TYPE_STRING ; 
 int /*<<< orphan*/  DATA_TYPE_UINT64 ; 
 int /*<<< orphan*/  DMU_OST_ZFS ; 
 int /*<<< orphan*/  E2BIG ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SPA_VERSION_BEFORE_FEATURES ; 
 int SPA_VERSION_BOOTFS ; 
 int ZFS_DNSIZE_LEGACY ; 
 int /*<<< orphan*/  ZFS_PROP_COMPRESSION ; 
 int /*<<< orphan*/  ZFS_PROP_DNODESIZE ; 
 int ZIO_FAILURE_MODE_PANIC ; 
#define  ZPOOL_PROP_AUTOEXPAND 139 
#define  ZPOOL_PROP_AUTOREPLACE 138 
#define  ZPOOL_PROP_AUTOTRIM 137 
#define  ZPOOL_PROP_BOOTFS 136 
#define  ZPOOL_PROP_CACHEFILE 135 
#define  ZPOOL_PROP_COMMENT 134 
 int const ZPOOL_PROP_DEDUPDITTO ; 
#define  ZPOOL_PROP_DELEGATION 133 
#define  ZPOOL_PROP_FAILUREMODE 132 
#define  ZPOOL_PROP_INVAL 131 
#define  ZPOOL_PROP_LISTSNAPS 130 
#define  ZPOOL_PROP_MULTIHOST 129 
#define  ZPOOL_PROP_VERSION 128 
 int /*<<< orphan*/  ZPROP_MAX_COMMENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,char**) ; 
 int FUNC17 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (char const*,char) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 char* FUNC23 (char*,char) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int FUNC28 (char const*) ; 
 int FUNC29 (int const) ; 
 int /*<<< orphan*/  FUNC30 (char const*) ; 
 int /*<<< orphan*/  FUNC31 (int const) ; 

__attribute__((used)) static int
FUNC32(spa_t *spa, nvlist_t *props)
{
	nvpair_t *elem;
	int error = 0, reset_bootfs = 0;
	uint64_t objnum = 0;
	boolean_t has_feature = B_FALSE;

	elem = NULL;
	while ((elem = FUNC11(props, elem)) != NULL) {
		uint64_t intval;
		char *strval, *slash, *check, *fname;
		const char *propname = FUNC14(elem);
		zpool_prop_t prop = FUNC28(propname);

		switch (prop) {
		case ZPOOL_PROP_INVAL:
			if (!FUNC30(propname)) {
				error = FUNC2(EINVAL);
				break;
			}

			/*
			 * Sanitize the input.
			 */
			if (FUNC15(elem) != DATA_TYPE_UINT64) {
				error = FUNC2(EINVAL);
				break;
			}

			if (FUNC17(elem, &intval) != 0) {
				error = FUNC2(EINVAL);
				break;
			}

			if (intval != 0) {
				error = FUNC2(EINVAL);
				break;
			}

			fname = FUNC20(propname, '@') + 1;
			if (FUNC25(fname, NULL) != 0) {
				error = FUNC2(EINVAL);
				break;
			}

			has_feature = B_TRUE;
			break;

		case ZPOOL_PROP_VERSION:
			error = FUNC17(elem, &intval);
			if (!error &&
			    (intval < FUNC19(spa) ||
			    intval > SPA_VERSION_BEFORE_FEATURES ||
			    has_feature))
				error = FUNC2(EINVAL);
			break;

		case ZPOOL_PROP_DELEGATION:
		case ZPOOL_PROP_AUTOREPLACE:
		case ZPOOL_PROP_LISTSNAPS:
		case ZPOOL_PROP_AUTOEXPAND:
		case ZPOOL_PROP_AUTOTRIM:
			error = FUNC17(elem, &intval);
			if (!error && intval > 1)
				error = FUNC2(EINVAL);
			break;

		case ZPOOL_PROP_MULTIHOST:
			error = FUNC17(elem, &intval);
			if (!error && intval > 1)
				error = FUNC2(EINVAL);

			if (!error) {
				uint32_t hostid = FUNC27(NULL);
				if (hostid)
					spa->spa_hostid = hostid;
				else
					error = FUNC2(ENOTSUP);
			}

			break;

		case ZPOOL_PROP_BOOTFS:
			/*
			 * If the pool version is less than SPA_VERSION_BOOTFS,
			 * or the pool is still being created (version == 0),
			 * the bootfs property cannot be set.
			 */
			if (FUNC19(spa) < SPA_VERSION_BOOTFS) {
				error = FUNC2(ENOTSUP);
				break;
			}

			/*
			 * Make sure the vdev config is bootable
			 */
			if (!FUNC24(spa->spa_root_vdev)) {
				error = FUNC2(ENOTSUP);
				break;
			}

			reset_bootfs = 1;

			error = FUNC16(elem, &strval);

			if (!error) {
				objset_t *os;
				uint64_t propval;

				if (strval == NULL || strval[0] == '\0') {
					objnum = FUNC29(
					    ZPOOL_PROP_BOOTFS);
					break;
				}

				error = FUNC4(strval, FTAG, &os);
				if (error != 0)
					break;

				/*
				 * Must be ZPL, and its property settings
				 * must be supported by GRUB (compression
				 * is not gzip, and large dnodes are not
				 * used).
				 */

				if (FUNC7(os) != DMU_OST_ZFS) {
					error = FUNC2(ENOTSUP);
				} else if ((error =
				    FUNC8(FUNC3(os),
				    FUNC26(ZFS_PROP_COMPRESSION),
				    &propval)) == 0 &&
				    !FUNC1(propval)) {
					error = FUNC2(ENOTSUP);
				} else if ((error =
				    FUNC8(FUNC3(os),
				    FUNC26(ZFS_PROP_DNODESIZE),
				    &propval)) == 0 &&
				    propval != ZFS_DNSIZE_LEGACY) {
					error = FUNC2(ENOTSUP);
				} else {
					objnum = FUNC5(os);
				}
				FUNC6(os, FTAG);
			}
			break;

		case ZPOOL_PROP_FAILUREMODE:
			error = FUNC17(elem, &intval);
			if (!error && intval > ZIO_FAILURE_MODE_PANIC)
				error = FUNC2(EINVAL);

			/*
			 * This is a special case which only occurs when
			 * the pool has completely failed. This allows
			 * the user to change the in-core failmode property
			 * without syncing it out to disk (I/Os might
			 * currently be blocked). We do this by returning
			 * EIO to the caller (spa_prop_set) to trick it
			 * into thinking we encountered a property validation
			 * error.
			 */
			if (!error && FUNC18(spa)) {
				spa->spa_failmode = intval;
				error = FUNC2(EIO);
			}
			break;

		case ZPOOL_PROP_CACHEFILE:
			if ((error = FUNC16(elem, &strval)) != 0)
				break;

			if (strval[0] == '\0')
				break;

			if (FUNC21(strval, "none") == 0)
				break;

			if (strval[0] != '/') {
				error = FUNC2(EINVAL);
				break;
			}

			slash = FUNC23(strval, '/');
			FUNC0(slash != NULL);

			if (slash[1] == '\0' || FUNC21(slash, "/.") == 0 ||
			    FUNC21(slash, "/..") == 0)
				error = FUNC2(EINVAL);
			break;

		case ZPOOL_PROP_COMMENT:
			if ((error = FUNC16(elem, &strval)) != 0)
				break;
			for (check = strval; *check != '\0'; check++) {
				if (!FUNC9(*check)) {
					error = FUNC2(EINVAL);
					break;
				}
			}
			if (FUNC22(strval) > ZPROP_MAX_COMMENT)
				error = FUNC2(E2BIG);
			break;

		default:
			break;
		}

		if (error)
			break;
	}

	(void) FUNC13(props,
	    FUNC31(ZPOOL_PROP_DEDUPDITTO));

	if (!error && reset_bootfs) {
		error = FUNC12(props,
		    FUNC31(ZPOOL_PROP_BOOTFS), DATA_TYPE_STRING);

		if (!error) {
			error = FUNC10(props,
			    FUNC31(ZPOOL_PROP_BOOTFS), objnum);
		}
	}

	return (error);
}