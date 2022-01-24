#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_3__ {char* fi_uname; } ;
typedef  TYPE_1__ zfeature_info_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  size_t spa_feature_t ;
typedef  int /*<<< orphan*/  propname ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 scalar_t__ ENOENT ; 
 scalar_t__ EZFS_INVALIDNAME ; 
 int MAXPATHLEN ; 
 size_t SPA_FEATURES ; 
 int /*<<< orphan*/  SPA_VERSION_FEATURES ; 
 char* VDEV_ALLOC_BIAS_DEDUP ; 
 char* VDEV_ALLOC_BIAS_LOG ; 
 char* VDEV_ALLOC_BIAS_SPECIAL ; 
 char* ZFS_FEATURE_DISABLED ; 
 char* ZFS_FEATURE_ENABLED ; 
 char* ZFS_MOUNTPOINT_LEGACY ; 
 char* ZFS_MOUNTPOINT_NONE ; 
 int /*<<< orphan*/  ZFS_PROP_MOUNTPOINT ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  ZPOOL_PROP_ALTROOT ; 
 int /*<<< orphan*/  ZPOOL_PROP_CACHEFILE ; 
 int /*<<< orphan*/  ZPOOL_PROP_TNAME ; 
 int /*<<< orphan*/  ZPOOL_PROP_VERSION ; 
 int FUNC0 (char*,char*,int /*<<< orphan*/ **,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ **,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC4 (int,char**,char*) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int,scalar_t__,scalar_t__,int,char**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char*,...) ; 
 TYPE_1__* spa_feature_table ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC16 (char*,char) ; 
 scalar_t__ FUNC17 (char*,char*) ; 
 char* FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC25 (int /*<<< orphan*/ ) ; 
 int FUNC26 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 char* FUNC29 (int /*<<< orphan*/ ) ; 

int
FUNC30(int argc, char **argv)
{
	boolean_t force = B_FALSE;
	boolean_t dryrun = B_FALSE;
	boolean_t enable_all_pool_feat = B_TRUE;
	int c;
	nvlist_t *nvroot = NULL;
	char *poolname;
	char *tname = NULL;
	int ret = 1;
	char *altroot = NULL;
	char *mountpoint = NULL;
	nvlist_t *fsprops = NULL;
	nvlist_t *props = NULL;
	char *propval;

	/* check options */
	while ((c = FUNC4(argc, argv, ":fndR:m:o:O:t:")) != -1) {
		switch (c) {
		case 'f':
			force = B_TRUE;
			break;
		case 'n':
			dryrun = B_TRUE;
			break;
		case 'd':
			enable_all_pool_feat = B_FALSE;
			break;
		case 'R':
			altroot = optarg;
			if (FUNC0(FUNC29(
			    ZPOOL_PROP_ALTROOT), optarg, &props, B_TRUE))
				goto errout;
			if (FUNC1(FUNC29(
			    ZPOOL_PROP_CACHEFILE), "none", &props, B_TRUE))
				goto errout;
			break;
		case 'm':
			/* Equivalent to -O mountpoint=optarg */
			mountpoint = optarg;
			break;
		case 'o':
			if ((propval = FUNC16(optarg, '=')) == NULL) {
				(void) FUNC3(stderr, "%s", FUNC5("missing "
				    "'=' for -o option\n"));
				goto errout;
			}
			*propval = '\0';
			propval++;

			if (FUNC0(optarg, propval, &props, B_TRUE))
				goto errout;

			/*
			 * If the user is creating a pool that doesn't support
			 * feature flags, don't enable any features.
			 */
			if (FUNC28(optarg) == ZPOOL_PROP_VERSION) {
				char *end;
				u_longlong_t ver;

				ver = FUNC19(propval, &end, 10);
				if (*end == '\0' &&
				    ver < SPA_VERSION_FEATURES) {
					enable_all_pool_feat = B_FALSE;
				}
			}
			if (FUNC28(optarg) == ZPOOL_PROP_ALTROOT)
				altroot = propval;
			break;
		case 'O':
			if ((propval = FUNC16(optarg, '=')) == NULL) {
				(void) FUNC3(stderr, "%s", FUNC5("missing "
				    "'=' for -O option\n"));
				goto errout;
			}
			*propval = '\0';
			propval++;

			/*
			 * Mountpoints are checked and then added later.
			 * Uniquely among properties, they can be specified
			 * more than once, to avoid conflict with -m.
			 */
			if (0 == FUNC17(optarg,
			    FUNC25(ZFS_PROP_MOUNTPOINT))) {
				mountpoint = propval;
			} else if (FUNC0(optarg, propval, &fsprops,
			    B_FALSE)) {
				goto errout;
			}
			break;
		case 't':
			/*
			 * Sanity check temporary pool name.
			 */
			if (FUNC16(optarg, '/') != NULL) {
				(void) FUNC3(stderr, FUNC5("cannot create "
				    "'%s': invalid character '/' in temporary "
				    "name\n"), optarg);
				(void) FUNC3(stderr, "%s", FUNC5("use 'zfs "
				    "create' to create a dataset\n"));
				goto errout;
			}

			if (FUNC0(FUNC29(
			    ZPOOL_PROP_TNAME), optarg, &props, B_TRUE))
				goto errout;
			if (FUNC1(FUNC29(
			    ZPOOL_PROP_CACHEFILE), "none", &props, B_TRUE))
				goto errout;
			tname = optarg;
			break;
		case ':':
			(void) FUNC3(stderr, FUNC5("missing argument for "
			    "'%c' option\n"), optopt);
			goto badusage;
		case '?':
			(void) FUNC3(stderr, FUNC5("invalid option '%c'\n"),
			    optopt);
			goto badusage;
		}
	}

	argc -= optind;
	argv += optind;

	/* get pool name and check number of arguments */
	if (argc < 1) {
		(void) FUNC3(stderr, "%s", FUNC5("missing pool name argument\n"));
		goto badusage;
	}
	if (argc < 2) {
		(void) FUNC3(stderr, "%s", FUNC5("missing vdev specification\n"));
		goto badusage;
	}

	poolname = argv[0];

	/*
	 * As a special case, check for use of '/' in the name, and direct the
	 * user to use 'zfs create' instead.
	 */
	if (FUNC16(poolname, '/') != NULL) {
		(void) FUNC3(stderr, FUNC5("cannot create '%s': invalid "
		    "character '/' in pool name\n"), poolname);
		(void) FUNC3(stderr, "%s", FUNC5("use 'zfs create' to "
		    "create a dataset\n"));
		goto errout;
	}

	/* pass off to make_root_vdev for bulk processing */
	nvroot = FUNC7(NULL, props, force, !force, B_FALSE, dryrun,
	    argc - 1, argv + 1);
	if (nvroot == NULL)
		goto errout;

	/* make_root_vdev() allows 0 toplevel children if there are spares */
	if (!FUNC21(nvroot)) {
		(void) FUNC3(stderr, "%s", FUNC5("invalid vdev "
		    "specification: at least one toplevel vdev must be "
		    "specified\n"));
		goto errout;
	}

	if (altroot != NULL && altroot[0] != '/') {
		(void) FUNC3(stderr, FUNC5("invalid alternate root '%s': "
		    "must be an absolute path\n"), altroot);
		goto errout;
	}

	/*
	 * Check the validity of the mountpoint and direct the user to use the
	 * '-m' mountpoint option if it looks like its in use.
	 */
	if (mountpoint == NULL ||
	    (FUNC17(mountpoint, ZFS_MOUNTPOINT_LEGACY) != 0 &&
	    FUNC17(mountpoint, ZFS_MOUNTPOINT_NONE) != 0)) {
		char buf[MAXPATHLEN];
		DIR *dirp;

		if (mountpoint && mountpoint[0] != '/') {
			(void) FUNC3(stderr, FUNC5("invalid mountpoint "
			    "'%s': must be an absolute path, 'legacy', or "
			    "'none'\n"), mountpoint);
			goto errout;
		}

		if (mountpoint == NULL) {
			if (altroot != NULL)
				(void) FUNC15(buf, sizeof (buf), "%s/%s",
				    altroot, poolname);
			else
				(void) FUNC15(buf, sizeof (buf), "/%s",
				    poolname);
		} else {
			if (altroot != NULL)
				(void) FUNC15(buf, sizeof (buf), "%s%s",
				    altroot, mountpoint);
			else
				(void) FUNC15(buf, sizeof (buf), "%s",
				    mountpoint);
		}

		if ((dirp = FUNC11(buf)) == NULL && errno != ENOENT) {
			(void) FUNC3(stderr, FUNC5("mountpoint '%s' : "
			    "%s\n"), buf, FUNC18(errno));
			(void) FUNC3(stderr, "%s", FUNC5("use '-m' "
			    "option to provide a different default\n"));
			goto errout;
		} else if (dirp) {
			int count = 0;

			while (count < 3 && FUNC14(dirp) != NULL)
				count++;
			(void) FUNC2(dirp);

			if (count > 2) {
				(void) FUNC3(stderr, FUNC5("mountpoint "
				    "'%s' exists and is not empty\n"), buf);
				(void) FUNC3(stderr, "%s", FUNC5("use '-m' "
				    "option to provide a "
				    "different default\n"));
				goto errout;
			}
		}
	}

	/*
	 * Now that the mountpoint's validity has been checked, ensure that
	 * the property is set appropriately prior to creating the pool.
	 */
	if (mountpoint != NULL) {
		ret = FUNC0(FUNC25(ZFS_PROP_MOUNTPOINT),
		    mountpoint, &fsprops, B_FALSE);
		if (ret != 0)
			goto errout;
	}

	ret = 1;
	if (dryrun) {
		/*
		 * For a dry run invocation, print out a basic message and run
		 * through all the vdevs in the list and print out in an
		 * appropriate hierarchy.
		 */
		(void) FUNC13(FUNC5("would create '%s' with the "
		    "following layout:\n\n"), poolname);

		FUNC12(NULL, poolname, nvroot, 0, "", 0);
		FUNC12(NULL, "dedup", nvroot, 0,
		    VDEV_ALLOC_BIAS_DEDUP, 0);
		FUNC12(NULL, "special", nvroot, 0,
		    VDEV_ALLOC_BIAS_SPECIAL, 0);
		FUNC12(NULL, "logs", nvroot, 0,
		    VDEV_ALLOC_BIAS_LOG, 0);

		ret = 0;
	} else {
		/*
		 * Hand off to libzfs.
		 */
		spa_feature_t i;
		for (i = 0; i < SPA_FEATURES; i++) {
			char propname[MAXPATHLEN];
			char *propval;
			zfeature_info_t *feat = &spa_feature_table[i];

			(void) FUNC15(propname, sizeof (propname),
			    "feature@%s", feat->fi_uname);

			/*
			 * Only features contained in props will be enabled:
			 * remove from the nvlist every ZFS_FEATURE_DISABLED
			 * value and add every missing ZFS_FEATURE_ENABLED if
			 * enable_all_pool_feat is set.
			 */
			if (!FUNC9(props, propname, &propval)) {
				if (FUNC17(propval, ZFS_FEATURE_DISABLED) == 0)
					(void) FUNC10(props,
					    propname);
			} else if (enable_all_pool_feat) {
				ret = FUNC0(propname,
				    ZFS_FEATURE_ENABLED, &props, B_TRUE);
				if (ret != 0)
					goto errout;
			}
		}

		ret = 1;
		if (FUNC27(g_zfs, poolname,
		    nvroot, props, fsprops) == 0) {
			zfs_handle_t *pool = FUNC24(g_zfs,
			    tname ? tname : poolname, ZFS_TYPE_FILESYSTEM);
			if (pool != NULL) {
				if (FUNC23(pool, NULL, 0) == 0)
					ret = FUNC26(pool);
				FUNC22(pool);
			}
		} else if (FUNC6(g_zfs) == EZFS_INVALIDNAME) {
			(void) FUNC3(stderr, "%s", FUNC5("pool name may have "
			    "been omitted\n"));
		}
	}

errout:
	FUNC8(nvroot);
	FUNC8(fsprops);
	FUNC8(props);
	return (ret);
badusage:
	FUNC8(fsprops);
	FUNC8(props);
	FUNC20(B_FALSE);
	return (2);
}