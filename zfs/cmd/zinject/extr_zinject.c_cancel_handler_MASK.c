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
struct TYPE_3__ {char* member_0; scalar_t__ zc_guid; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_IOC_CLEAR_FAULT ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  g_zfs ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(int id)
{
	zfs_cmd_t zc = {"\0"};

	zc.zc_guid = (uint64_t)id;

	if (FUNC3(g_zfs, ZFS_IOC_CLEAR_FAULT, &zc) != 0) {
		(void) FUNC0(stderr, "failed to remove handler %d: %s\n",
		    id, FUNC2(errno));
		return (1);
	}

	(void) FUNC1("removed handler %d\n", id);

	return (0);
}