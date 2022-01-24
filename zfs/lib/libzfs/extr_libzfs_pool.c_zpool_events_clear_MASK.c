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
struct TYPE_3__ {char* member_0; scalar_t__ zc_cookie; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_EVENTS_CLEAR ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

int
FUNC4(libzfs_handle_t *hdl, int *count)
{
	zfs_cmd_t zc = {"\0"};
	char msg[1024];

	(void) FUNC1(msg, sizeof (msg), FUNC0(TEXT_DOMAIN,
	    "cannot clear events"));

	if (FUNC2(hdl, ZFS_IOC_EVENTS_CLEAR, &zc) != 0)
		return (FUNC3(hdl, errno, msg));

	if (count != NULL)
		*count = (int)zc.zc_cookie; /* # of events cleared */

	return (0);
}