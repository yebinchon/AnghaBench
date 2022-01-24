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
struct TYPE_3__ {char* member_0; char* zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  parent ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  EZFS_BADTYPE ; 
 int /*<<< orphan*/  EZFS_INVALIDNAME ; 
 int /*<<< orphan*/  EZFS_NOENT ; 
 scalar_t__ GLOBAL_ZONEID ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_OBJSET_STATS ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_ZONED ; 
 scalar_t__ ZFS_TYPE_FILESYSTEM ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*) ; 
 char* FUNC5 (char*,char) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,scalar_t__,char*) ; 

__attribute__((used)) static int
FUNC15(libzfs_handle_t *hdl, const char *path, uint64_t *zoned,
    boolean_t accept_ancestor, int *prefixlen)
{
	zfs_cmd_t zc = {"\0"};
	char parent[ZFS_MAX_DATASET_NAME_LEN];
	char *slash;
	zfs_handle_t *zhp;
	char errbuf[1024];
	uint64_t is_zoned;

	(void) FUNC4(errbuf, sizeof (errbuf),
	    FUNC0(TEXT_DOMAIN, "cannot create '%s'"), path);

	/* get parent, and check to see if this is just a pool */
	if (FUNC3(path, parent, sizeof (parent)) != 0) {
		FUNC10(hdl, FUNC0(TEXT_DOMAIN,
		    "missing dataset name"));
		return (FUNC9(hdl, EZFS_INVALIDNAME, errbuf));
	}

	/* check to see if the pool exists */
	if ((slash = FUNC5(parent, '/')) == NULL)
		slash = parent + FUNC6(parent);
	(void) FUNC7(zc.zc_name, parent, slash - parent);
	zc.zc_name[slash - parent] = '\0';
	if (FUNC12(hdl, ZFS_IOC_OBJSET_STATS, &zc) != 0 &&
	    errno == ENOENT) {
		FUNC10(hdl, FUNC0(TEXT_DOMAIN,
		    "no such pool '%s'"), zc.zc_name);
		return (FUNC9(hdl, EZFS_NOENT, errbuf));
	}

	/* check to see if the parent dataset exists */
	while ((zhp = FUNC2(hdl, parent)) == NULL) {
		if (errno == ENOENT && accept_ancestor) {
			/*
			 * Go deeper to find an ancestor, give up on top level.
			 */
			if (FUNC3(parent, parent, sizeof (parent)) != 0) {
				FUNC10(hdl, FUNC0(TEXT_DOMAIN,
				    "no such pool '%s'"), zc.zc_name);
				return (FUNC9(hdl, EZFS_NOENT, errbuf));
			}
		} else if (errno == ENOENT) {
			FUNC10(hdl, FUNC0(TEXT_DOMAIN,
			    "parent does not exist"));
			return (FUNC9(hdl, EZFS_NOENT, errbuf));
		} else
			return (FUNC14(hdl, errno, errbuf));
	}

	is_zoned = FUNC13(zhp, ZFS_PROP_ZONED);
	if (zoned != NULL)
		*zoned = is_zoned;

	/* we are in a non-global zone, but parent is in the global zone */
	if (FUNC1() != GLOBAL_ZONEID && !is_zoned) {
		(void) FUNC14(hdl, EPERM, errbuf);
		FUNC8(zhp);
		return (-1);
	}

	/* make sure parent is a filesystem */
	if (FUNC11(zhp) != ZFS_TYPE_FILESYSTEM) {
		FUNC10(hdl, FUNC0(TEXT_DOMAIN,
		    "parent is not a filesystem"));
		(void) FUNC9(hdl, EZFS_BADTYPE, errbuf);
		FUNC8(zhp);
		return (-1);
	}

	FUNC8(zhp);
	if (prefixlen != NULL)
		*prefixlen = FUNC6(parent);
	return (0);
}