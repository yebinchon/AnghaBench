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
struct TYPE_5__ {int /*<<< orphan*/  fsx_projid; } ;
typedef  TYPE_1__ zfsxattr_t ;
struct TYPE_6__ {int /*<<< orphan*/  zpc_expected_projid; } ;
typedef  TYPE_2__ zfs_project_control_t ;

/* Variables and functions */
 int O_NOCTTY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  ZFS_IOC_FSGETXATTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(const char *name, zfs_project_control_t *zpc)
{
	zfsxattr_t fsx;
	int ret, fd;

	fd = FUNC4(name, O_RDONLY | O_NOCTTY);
	if (fd < 0) {
		(void) FUNC1(stderr, FUNC2("failed to open %s: %s\n"),
		    name, FUNC5(errno));
		return (fd);
	}

	ret = FUNC3(fd, ZFS_IOC_FSGETXATTR, &fsx);
	if (ret)
		(void) FUNC1(stderr,
		    FUNC2("failed to get xattr for %s: %s\n"),
		    name, FUNC5(errno));
	else
		zpc->zpc_expected_projid = fsx.fsx_projid;

	FUNC0(fd);
	return (ret);
}