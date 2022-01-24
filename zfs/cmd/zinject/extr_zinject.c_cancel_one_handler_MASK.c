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
typedef  int /*<<< orphan*/  zinject_record_t ;
struct TYPE_3__ {char* member_0; scalar_t__ zc_guid; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_IOC_CLEAR_FAULT ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  g_zfs ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(int id, const char *pool, zinject_record_t *record,
    void *data)
{
	zfs_cmd_t zc = {"\0"};

	zc.zc_guid = (uint64_t)id;

	if (FUNC2(g_zfs, ZFS_IOC_CLEAR_FAULT, &zc) != 0) {
		(void) FUNC0(stderr, "failed to remove handler %d: %s\n",
		    id, FUNC1(errno));
		return (1);
	}

	return (0);
}