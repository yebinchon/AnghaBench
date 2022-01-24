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
typedef  int zprop_type_t ;
typedef  scalar_t__ zfs_type_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  data_type_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DATA_TYPE_STRING ; 
 int /*<<< orphan*/  DATA_TYPE_UINT64 ; 
 int /*<<< orphan*/  EZFS_BADPROP ; 
#define  PROP_TYPE_INDEX 131 
#define  PROP_TYPE_NUMBER 130 
#define  PROP_TYPE_STRING 129 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  ZFS_MAXPROPLEN ; 
 int ZFS_PROP_FILESYSTEM_LIMIT ; 
 int ZFS_PROP_QUOTA ; 
 int ZFS_PROP_REFQUOTA ; 
#define  ZFS_PROP_REFRESERVATION 128 
 int ZFS_PROP_SNAPSHOT_LIMIT ; 
 scalar_t__ ZFS_TYPE_DATASET ; 
 scalar_t__ ZFS_TYPE_POOL ; 
 scalar_t__ ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC14 (int) ; 
 char* FUNC15 (int) ; 
 int FUNC16 (int) ; 
 char* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int,char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int,scalar_t__) ; 

int
FUNC20(libzfs_handle_t *hdl, nvpair_t *elem, int prop,
    zfs_type_t type, nvlist_t *ret, char **svalp, uint64_t *ivalp,
    const char *errbuf)
{
	data_type_t datatype = FUNC6(elem);
	zprop_type_t proptype;
	const char *propname;
	char *value;
	boolean_t isnone = B_FALSE;
	boolean_t isauto = B_FALSE;
	int err = 0;

	if (type == ZFS_TYPE_POOL) {
		proptype = FUNC16(prop);
		propname = FUNC17(prop);
	} else {
		proptype = FUNC14(prop);
		propname = FUNC15(prop);
	}

	/*
	 * Convert any properties to the internal DSL value types.
	 */
	*svalp = NULL;
	*ivalp = 0;

	switch (proptype) {
	case PROP_TYPE_STRING:
		if (datatype != DATA_TYPE_STRING) {
			FUNC12(hdl, FUNC1(TEXT_DOMAIN,
			    "'%s' must be a string"), FUNC5(elem));
			goto error;
		}
		err = FUNC7(elem, svalp);
		if (err != 0) {
			FUNC12(hdl, FUNC1(TEXT_DOMAIN,
			    "'%s' is invalid"), FUNC5(elem));
			goto error;
		}
		if (FUNC10(*svalp) >= ZFS_MAXPROPLEN) {
			FUNC12(hdl, FUNC1(TEXT_DOMAIN,
			    "'%s' is too long"), FUNC5(elem));
			goto error;
		}
		break;

	case PROP_TYPE_NUMBER:
		if (datatype == DATA_TYPE_STRING) {
			(void) FUNC7(elem, &value);
			if (FUNC9(value, "none") == 0) {
				isnone = B_TRUE;
			} else if (FUNC9(value, "auto") == 0) {
				isauto = B_TRUE;
			} else if (FUNC13(hdl, value, ivalp) != 0) {
				goto error;
			}
		} else if (datatype == DATA_TYPE_UINT64) {
			(void) FUNC8(elem, ivalp);
		} else {
			FUNC12(hdl, FUNC1(TEXT_DOMAIN,
			    "'%s' must be a number"), FUNC5(elem));
			goto error;
		}

		/*
		 * Quota special: force 'none' and don't allow 0.
		 */
		if ((type & ZFS_TYPE_DATASET) && *ivalp == 0 && !isnone &&
		    (prop == ZFS_PROP_QUOTA || prop == ZFS_PROP_REFQUOTA)) {
			FUNC12(hdl, FUNC1(TEXT_DOMAIN,
			    "use 'none' to disable quota/refquota"));
			goto error;
		}

		/*
		 * Special handling for "*_limit=none". In this case it's not
		 * 0 but UINT64_MAX.
		 */
		if ((type & ZFS_TYPE_DATASET) && isnone &&
		    (prop == ZFS_PROP_FILESYSTEM_LIMIT ||
		    prop == ZFS_PROP_SNAPSHOT_LIMIT)) {
			*ivalp = UINT64_MAX;
		}

		/*
		 * Special handling for setting 'refreservation' to 'auto'.  Use
		 * UINT64_MAX to tell the caller to use zfs_fix_auto_resv().
		 * 'auto' is only allowed on volumes.
		 */
		if (isauto) {
			switch (prop) {
			case ZFS_PROP_REFRESERVATION:
				if ((type & ZFS_TYPE_VOLUME) == 0) {
					FUNC12(hdl, FUNC1(TEXT_DOMAIN,
					    "'%s=auto' only allowed on "
					    "volumes"), FUNC5(elem));
					goto error;
				}
				*ivalp = UINT64_MAX;
				break;
			default:
				FUNC12(hdl, FUNC1(TEXT_DOMAIN,
				    "'auto' is invalid value for '%s'"),
				    FUNC5(elem));
				goto error;
			}
		}

		break;

	case PROP_TYPE_INDEX:
		if (datatype != DATA_TYPE_STRING) {
			FUNC12(hdl, FUNC1(TEXT_DOMAIN,
			    "'%s' must be a string"), FUNC5(elem));
			goto error;
		}

		(void) FUNC7(elem, &value);

		if (FUNC18(prop, value, ivalp, type) != 0) {
			FUNC12(hdl, FUNC1(TEXT_DOMAIN,
			    "'%s' must be one of '%s'"), propname,
			    FUNC19(prop, type));
			goto error;
		}
		break;

	default:
		FUNC0();
	}

	/*
	 * Add the result to our return set of properties.
	 */
	if (*svalp != NULL) {
		if (FUNC3(ret, propname, *svalp) != 0) {
			(void) FUNC2(hdl);
			return (-1);
		}
	} else {
		if (FUNC4(ret, propname, *ivalp) != 0) {
			(void) FUNC2(hdl);
			return (-1);
		}
	}

	return (0);
error:
	(void) FUNC11(hdl, EZFS_BADPROP, errbuf);
	return (-1);
}