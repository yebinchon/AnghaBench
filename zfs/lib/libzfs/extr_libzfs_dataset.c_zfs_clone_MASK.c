#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_type_t ;
struct TYPE_7__ {scalar_t__ zfs_type; int /*<<< orphan*/ * zfs_hdl; int /*<<< orphan*/  zfs_name; int /*<<< orphan*/  zpool_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  parent ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
#define  ENOENT 129 
#define  EXDEV 128 
 int /*<<< orphan*/  EZFS_CROSSTARGET ; 
 int /*<<< orphan*/  EZFS_CRYPTOFAILED ; 
 int /*<<< orphan*/  EZFS_INVALIDNAME ; 
 int /*<<< orphan*/  EZFS_NOENT ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 scalar_t__ ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC15(zfs_handle_t *zhp, const char *target, nvlist_t *props)
{
	char parent[ZFS_MAX_DATASET_NAME_LEN];
	int ret;
	char errbuf[1024];
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	uint64_t zoned;

	FUNC1(zhp->zfs_type == ZFS_TYPE_SNAPSHOT);

	(void) FUNC7(errbuf, sizeof (errbuf), FUNC3(TEXT_DOMAIN,
	    "cannot create '%s'"), target);

	/* validate the target/clone name */
	if (!FUNC14(hdl, target, ZFS_TYPE_FILESYSTEM, B_TRUE))
		return (FUNC9(hdl, EZFS_INVALIDNAME, errbuf));

	/* validate parents exist */
	if (FUNC2(hdl, target, &zoned, B_FALSE, NULL) != 0)
		return (-1);

	(void) FUNC6(target, parent, sizeof (parent));

	/* do the clone */

	if (props) {
		zfs_type_t type;

		if (FUNC0(zhp)) {
			type = ZFS_TYPE_VOLUME;
		} else {
			type = ZFS_TYPE_FILESYSTEM;
		}
		if ((props = FUNC13(hdl, type, props, zoned,
		    zhp, zhp->zpool_hdl, B_TRUE, errbuf)) == NULL)
			return (-1);
		if (FUNC11(zhp, props) == -1) {
			FUNC5(props);
			return (-1);
		}
	}

	if (FUNC8(hdl, zhp, parent, props) != 0) {
		FUNC5(props);
		return (FUNC9(hdl, EZFS_CRYPTOFAILED, errbuf));
	}

	ret = FUNC4(target, zhp->zfs_name, props);
	FUNC5(props);

	if (ret != 0) {
		switch (errno) {

		case ENOENT:
			/*
			 * The parent doesn't exist.  We should have caught this
			 * above, but there may a race condition that has since
			 * destroyed the parent.
			 *
			 * At this point, we don't know whether it's the source
			 * that doesn't exist anymore, or whether the target
			 * dataset doesn't exist.
			 */
			FUNC10(zhp->zfs_hdl, FUNC3(TEXT_DOMAIN,
			    "no such parent '%s'"), parent);
			return (FUNC9(zhp->zfs_hdl, EZFS_NOENT, errbuf));

		case EXDEV:
			FUNC10(zhp->zfs_hdl, FUNC3(TEXT_DOMAIN,
			    "source and target pools differ"));
			return (FUNC9(zhp->zfs_hdl, EZFS_CROSSTARGET,
			    errbuf));

		default:
			return (FUNC12(zhp->zfs_hdl, errno,
			    errbuf));
		}
	}

	return (ret);
}