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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  tmpbuf ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int PATH_BUF_LEN ; 
 int VDEV_NAME_FOLLOW_LINKS ; 
 int VDEV_NAME_GUID ; 
 int VDEV_NAME_PATH ; 
 int VDEV_NAME_TYPE_ID ; 
 char* VDEV_TYPE_DISK ; 
 char* VDEV_TYPE_RAIDZ ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_ID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_NOT_PRESENT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_NPARITY ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_PATH ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TYPE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_WHOLE_DISK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,...) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 char* FUNC11 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC12 (char*) ; 
 char* FUNC13 (char*) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 

char *
FUNC15(libzfs_handle_t *hdl, zpool_handle_t *zhp, nvlist_t *nv,
    int name_flags)
{
	char *path, *type, *env;
	uint64_t value;
	char buf[PATH_BUF_LEN];
	char tmpbuf[PATH_BUF_LEN];

	/*
	 * vdev_name will be "root"/"root-0" for the root vdev, but it is the
	 * zpool name that will be displayed to the user.
	 */
	FUNC10(FUNC2(nv, ZPOOL_CONFIG_TYPE, &type) == 0);
	if (zhp != NULL && FUNC6(type, "root") == 0)
		return (FUNC11(hdl, FUNC14(zhp)));

	env = FUNC1("ZPOOL_VDEV_NAME_PATH");
	if (env && (FUNC9(env, NULL, 0) > 0 ||
	    !FUNC8(env, "YES", 3) || !FUNC8(env, "ON", 2)))
		name_flags |= VDEV_NAME_PATH;

	env = FUNC1("ZPOOL_VDEV_NAME_GUID");
	if (env && (FUNC9(env, NULL, 0) > 0 ||
	    !FUNC8(env, "YES", 3) || !FUNC8(env, "ON", 2)))
		name_flags |= VDEV_NAME_GUID;

	env = FUNC1("ZPOOL_VDEV_NAME_FOLLOW_LINKS");
	if (env && (FUNC9(env, NULL, 0) > 0 ||
	    !FUNC8(env, "YES", 3) || !FUNC8(env, "ON", 2)))
		name_flags |= VDEV_NAME_FOLLOW_LINKS;

	if (FUNC3(nv, ZPOOL_CONFIG_NOT_PRESENT, &value) == 0 ||
	    name_flags & VDEV_NAME_GUID) {
		(void) FUNC3(nv, ZPOOL_CONFIG_GUID, &value);
		(void) FUNC5(buf, sizeof (buf), "%llu", (u_longlong_t)value);
		path = buf;
	} else if (FUNC2(nv, ZPOOL_CONFIG_PATH, &path) == 0) {
		if (name_flags & VDEV_NAME_FOLLOW_LINKS) {
			char *rp = FUNC4(path, NULL);
			if (rp) {
				FUNC7(buf, rp, sizeof (buf));
				path = buf;
				FUNC0(rp);
			}
		}

		/*
		 * For a block device only use the name.
		 */
		if ((FUNC6(type, VDEV_TYPE_DISK) == 0) &&
		    !(name_flags & VDEV_NAME_PATH)) {
			path = FUNC13(path);
		}

		/*
		 * Remove the partition from the path it this is a whole disk.
		 */
		if (FUNC3(nv, ZPOOL_CONFIG_WHOLE_DISK, &value)
		    == 0 && value && !(name_flags & VDEV_NAME_PATH)) {
			return (FUNC12(path));
		}
	} else {
		path = type;

		/*
		 * If it's a raidz device, we need to stick in the parity level.
		 */
		if (FUNC6(path, VDEV_TYPE_RAIDZ) == 0) {
			FUNC10(FUNC3(nv, ZPOOL_CONFIG_NPARITY,
			    &value) == 0);
			(void) FUNC5(buf, sizeof (buf), "%s%llu", path,
			    (u_longlong_t)value);
			path = buf;
		}

		/*
		 * We identify each top-level vdev by using a <type-id>
		 * naming convention.
		 */
		if (name_flags & VDEV_NAME_TYPE_ID) {
			uint64_t id;
			FUNC10(FUNC3(nv, ZPOOL_CONFIG_ID,
			    &id) == 0);
			(void) FUNC5(tmpbuf, sizeof (tmpbuf), "%s-%llu",
			    path, (u_longlong_t)id);
			path = tmpbuf;
		}
	}

	return (FUNC11(hdl, path));
}