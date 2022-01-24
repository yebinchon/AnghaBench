#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int fsx_projid; int fsx_xflags; } ;
typedef  TYPE_1__ zfsxattr_t ;
struct TYPE_6__ {int zpc_op; int zpc_expected_projid; int /*<<< orphan*/  zpc_set_flag; int /*<<< orphan*/  zpc_keep_projid; int /*<<< orphan*/  zpc_newline; scalar_t__ zpc_ignore_noent; } ;
typedef  TYPE_2__ zfs_project_control_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENOENT ; 
 int O_NOCTTY ; 
 int O_RDONLY ; 
 int ZFS_DEFAULT_PROJID ; 
 int /*<<< orphan*/  ZFS_IOC_FSGETXATTR ; 
 int /*<<< orphan*/  ZFS_IOC_FSSETXATTR ; 
#define  ZFS_PROJECT_OP_CHECK 131 
#define  ZFS_PROJECT_OP_CLEAR 130 
#define  ZFS_PROJECT_OP_LIST 129 
#define  ZFS_PROJECT_OP_SET 128 
 int ZFS_PROJINHERIT_FL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (scalar_t__) ; 

__attribute__((used)) static int
FUNC8(const char *name, zfs_project_control_t *zpc)
{
	zfsxattr_t fsx;
	int ret, fd;

	fd = FUNC5(name, O_RDONLY | O_NOCTTY);
	if (fd < 0) {
		if (errno == ENOENT && zpc->zpc_ignore_noent)
			return (0);

		(void) FUNC2(stderr, FUNC3("failed to open %s: %s\n"),
		    name, FUNC7(errno));
		return (fd);
	}

	ret = FUNC4(fd, ZFS_IOC_FSGETXATTR, &fsx);
	if (ret) {
		(void) FUNC2(stderr,
		    FUNC3("failed to get xattr for %s: %s\n"),
		    name, FUNC7(errno));
		goto out;
	}

	switch (zpc->zpc_op) {
	case ZFS_PROJECT_OP_LIST:
		(void) FUNC6("%5u %c %s\n", fsx.fsx_projid,
		    (fsx.fsx_xflags & ZFS_PROJINHERIT_FL) ? 'P' : '-', name);
		goto out;
	case ZFS_PROJECT_OP_CHECK:
		if (fsx.fsx_projid == zpc->zpc_expected_projid &&
		    fsx.fsx_xflags & ZFS_PROJINHERIT_FL)
			goto out;

		if (!zpc->zpc_newline) {
			char c = '\0';

			(void) FUNC6("%s%c", name, c);
			goto out;
		}

		if (fsx.fsx_projid != zpc->zpc_expected_projid)
			(void) FUNC6("%s - project ID is not set properly "
			    "(%u/%u)\n", name, fsx.fsx_projid,
			    (uint32_t)zpc->zpc_expected_projid);

		if (!(fsx.fsx_xflags & ZFS_PROJINHERIT_FL))
			(void) FUNC6("%s - project inherit flag is not set\n",
			    name);

		goto out;
	case ZFS_PROJECT_OP_CLEAR:
		if (!(fsx.fsx_xflags & ZFS_PROJINHERIT_FL) &&
		    (zpc->zpc_keep_projid ||
		    fsx.fsx_projid == ZFS_DEFAULT_PROJID))
			goto out;

		fsx.fsx_xflags &= ~ZFS_PROJINHERIT_FL;
		if (!zpc->zpc_keep_projid)
			fsx.fsx_projid = ZFS_DEFAULT_PROJID;
		break;
	case ZFS_PROJECT_OP_SET:
		if (fsx.fsx_projid == zpc->zpc_expected_projid &&
		    (!zpc->zpc_set_flag || fsx.fsx_xflags & ZFS_PROJINHERIT_FL))
			goto out;

		fsx.fsx_projid = zpc->zpc_expected_projid;
		if (zpc->zpc_set_flag)
			fsx.fsx_xflags |= ZFS_PROJINHERIT_FL;
		break;
	default:
		FUNC0(0);
		break;
	}

	ret = FUNC4(fd, ZFS_IOC_FSSETXATTR, &fsx);
	if (ret)
		(void) FUNC2(stderr,
		    FUNC3("failed to set xattr for %s: %s\n"),
		    name, FUNC7(errno));

out:
	FUNC1(fd);
	return (ret);
}