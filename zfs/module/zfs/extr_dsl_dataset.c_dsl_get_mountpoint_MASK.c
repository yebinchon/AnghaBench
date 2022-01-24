#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_8__ {TYPE_1__* ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
struct TYPE_6__ {TYPE_2__* dd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  ZAP_MAXVALUELEN ; 
 int /*<<< orphan*/  ZFS_PROP_MOUNTPOINT ; 
 char* ZPROP_SOURCE_VAL_RECVD ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(dsl_dataset_t *ds, const char *dsname, char *value,
    char *source)
{
	int error;
	dsl_pool_t *dp = ds->ds_dir->dd_pool;

	/* Retrieve the mountpoint value stored in the zap object */
	error = FUNC1(ds, FUNC9(ZFS_PROP_MOUNTPOINT), 1,
	    ZAP_MAXVALUELEN, value, source);
	if (error != 0) {
		return (error);
	}

	/*
	 * Process the dsname and source to find the full mountpoint string.
	 * Can be skipped for 'legacy' or 'none'.
	 */
	if (value[0] == '/') {
		char *buf = FUNC2(ZAP_MAXVALUELEN, KM_SLEEP);
		char *root = buf;
		const char *relpath;

		/*
		 * If we inherit the mountpoint, even from a dataset
		 * with a received value, the source will be the path of
		 * the dataset we inherit from. If source is
		 * ZPROP_SOURCE_VAL_RECVD, the received value is not
		 * inherited.
		 */
		if (FUNC6(source, ZPROP_SOURCE_VAL_RECVD) == 0) {
			relpath = "";
		} else {
			FUNC0(FUNC8(dsname, source, FUNC7(source)));
			relpath = dsname + FUNC7(source);
			if (relpath[0] == '/')
				relpath++;
		}

		FUNC5(dp->dp_spa, root, ZAP_MAXVALUELEN);

		/*
		 * Special case an alternate root of '/'. This will
		 * avoid having multiple leading slashes in the
		 * mountpoint path.
		 */
		if (FUNC6(root, "/") == 0)
			root++;

		/*
		 * If the mountpoint is '/' then skip over this
		 * if we are obtaining either an alternate root or
		 * an inherited mountpoint.
		 */
		char *mnt = value;
		if (value[1] == '\0' && (root[0] != '\0' ||
		    relpath[0] != '\0'))
			mnt = value + 1;

		if (relpath[0] == '\0') {
			(void) FUNC4(value, ZAP_MAXVALUELEN, "%s%s",
			    root, mnt);
		} else {
			(void) FUNC4(value, ZAP_MAXVALUELEN, "%s%s%s%s",
			    root, mnt, relpath[0] == '@' ? "" : "/",
			    relpath);
		}
		FUNC3(buf, ZAP_MAXVALUELEN);
	}

	return (0);
}