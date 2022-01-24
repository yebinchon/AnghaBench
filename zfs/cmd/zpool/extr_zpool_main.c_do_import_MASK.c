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
typedef  void* uint64_t ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ mmp_state_t ;

/* Variables and functions */
 scalar_t__ MMP_STATE_ACTIVE ; 
 scalar_t__ MMP_STATE_INACTIVE ; 
 scalar_t__ MMP_STATE_NO_HOSTID ; 
 scalar_t__ POOL_STATE_UNAVAIL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int ZFS_IMPORT_ANY_HOST ; 
 int ZFS_IMPORT_LOAD_KEYS ; 
 int ZFS_IMPORT_ONLY ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_HOSTID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_HOSTNAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_LOAD_INFO ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_HOSTID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_HOSTNAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_STATE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TIMESTAMP ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 char* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC15(nvlist_t *config, const char *newname, const char *mntopts,
    nvlist_t *props, int flags)
{
	int ret = 0;
	zpool_handle_t *zhp;
	char *name;
	uint64_t version;

	name = FUNC3(config, ZPOOL_CONFIG_POOL_NAME);
	version = FUNC4(config, ZPOOL_CONFIG_VERSION);

	if (!FUNC0(version)) {
		(void) FUNC5(stderr, FUNC6("cannot import '%s': pool "
		    "is formatted using an unsupported ZFS version\n"), name);
		return (1);
	} else if (FUNC9(config) &&
	    !(flags & ZFS_IMPORT_ANY_HOST)) {
		mmp_state_t mmp_state = MMP_STATE_INACTIVE;
		nvlist_t *nvinfo;

		nvinfo = FUNC2(config, ZPOOL_CONFIG_LOAD_INFO);
		if (FUNC7(nvinfo, ZPOOL_CONFIG_MMP_STATE))
			mmp_state = FUNC4(nvinfo,
			    ZPOOL_CONFIG_MMP_STATE);

		if (mmp_state == MMP_STATE_ACTIVE) {
			char *hostname = "<unknown>";
			uint64_t hostid = 0;

			if (FUNC7(nvinfo, ZPOOL_CONFIG_MMP_HOSTNAME))
				hostname = FUNC3(nvinfo,
				    ZPOOL_CONFIG_MMP_HOSTNAME);

			if (FUNC7(nvinfo, ZPOOL_CONFIG_MMP_HOSTID))
				hostid = FUNC4(nvinfo,
				    ZPOOL_CONFIG_MMP_HOSTID);

			(void) FUNC5(stderr, FUNC6("cannot import '%s': "
			    "pool is imported on %s (hostid: "
			    "0x%lx)\nExport the pool on the other system, "
			    "then run 'zpool import'.\n"),
			    name, hostname, (unsigned long) hostid);
		} else if (mmp_state == MMP_STATE_NO_HOSTID) {
			(void) FUNC5(stderr, FUNC6("Cannot import '%s': "
			    "pool has the multihost property on and the\n"
			    "system's hostid is not set. Set a unique hostid "
			    "with the zgenhostid(8) command.\n"), name);
		} else {
			char *hostname = "<unknown>";
			uint64_t timestamp = 0;
			uint64_t hostid = 0;

			if (FUNC7(config, ZPOOL_CONFIG_HOSTNAME))
				hostname = FUNC3(config,
				    ZPOOL_CONFIG_HOSTNAME);

			if (FUNC7(config, ZPOOL_CONFIG_TIMESTAMP))
				timestamp = FUNC4(config,
				    ZPOOL_CONFIG_TIMESTAMP);

			if (FUNC7(config, ZPOOL_CONFIG_HOSTID))
				hostid = FUNC4(config,
				    ZPOOL_CONFIG_HOSTID);

			(void) FUNC5(stderr, FUNC6("cannot import '%s': "
			    "pool was previously in use from another system.\n"
			    "Last accessed by %s (hostid=%lx) at %s"
			    "The pool can be imported, use 'zpool import -f' "
			    "to import the pool.\n"), name, hostname,
			    (unsigned long)hostid, FUNC1((time_t *)&timestamp));
		}

		return (1);
	}

	if (FUNC13(g_zfs, config, newname, props, flags) != 0)
		return (1);

	if (newname != NULL)
		name = (char *)newname;

	if ((zhp = FUNC14(g_zfs, name)) == NULL)
		return (1);

	/*
	 * Loading keys is best effort. We don't want to return immediately
	 * if it fails but we do want to give the error to the caller.
	 */
	if (flags & ZFS_IMPORT_LOAD_KEYS) {
		ret = FUNC8(g_zfs, name);
		if (ret != 0)
			ret = 1;
	}

	if (FUNC12(zhp) != POOL_STATE_UNAVAIL &&
	    !(flags & ZFS_IMPORT_ONLY) &&
	    FUNC11(zhp, mntopts, 0) != 0) {
		FUNC10(zhp);
		return (1);
	}

	FUNC10(zhp);
	return (ret);
}