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
struct TYPE_3__ {char* member_0; int zc_cleanup_fd; int /*<<< orphan*/  zc_guid; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
#define  ENOENT 129 
#define  ENOMEM 128 
 int /*<<< orphan*/  EZFS_NOENT ; 
 int /*<<< orphan*/  EZFS_NOMEM ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_EVENTS_SEEK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int
FUNC4(libzfs_handle_t *hdl, uint64_t eid, int zevent_fd)
{
	zfs_cmd_t zc = {"\0"};
	int error = 0;

	zc.zc_guid = eid;
	zc.zc_cleanup_fd = zevent_fd;

	if (FUNC2(hdl, ZFS_IOC_EVENTS_SEEK, &zc) != 0) {
		switch (errno) {
		case ENOENT:
			error = FUNC1(hdl, EZFS_NOENT,
			    FUNC0(TEXT_DOMAIN, "cannot get event"));
			break;

		case ENOMEM:
			error = FUNC1(hdl, EZFS_NOMEM,
			    FUNC0(TEXT_DOMAIN, "cannot get event"));
			break;

		default:
			error = FUNC3(hdl, errno,
			    FUNC0(TEXT_DOMAIN, "cannot get event"));
			break;
		}
	}

	return (error);
}