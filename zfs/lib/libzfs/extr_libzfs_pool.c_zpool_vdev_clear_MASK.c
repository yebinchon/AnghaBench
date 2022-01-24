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
struct TYPE_5__ {int /*<<< orphan*/  zpool_name; int /*<<< orphan*/ * zpool_hdl; } ;
typedef  TYPE_1__ zpool_handle_t ;
struct TYPE_6__ {char* member_0; int /*<<< orphan*/  zc_cookie; scalar_t__ zc_guid; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_CLEAR ; 
 int /*<<< orphan*/  ZPOOL_NO_REWIND ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

int
FUNC5(zpool_handle_t *zhp, uint64_t guid)
{
	zfs_cmd_t zc = {"\0"};
	char msg[1024];
	libzfs_handle_t *hdl = zhp->zpool_hdl;

	(void) FUNC1(msg, sizeof (msg),
	    FUNC0(TEXT_DOMAIN, "cannot clear errors for %llx"),
	    (u_longlong_t)guid);

	(void) FUNC2(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
	zc.zc_guid = guid;
	zc.zc_cookie = ZPOOL_NO_REWIND;

	if (FUNC3(hdl, ZFS_IOC_CLEAR, &zc) == 0)
		return (0);

	return (FUNC4(hdl, errno, msg));
}