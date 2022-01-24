#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* zdm_msg; } ;
typedef  TYPE_1__ zfs_dbgmsg_t ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_7__ {int /*<<< orphan*/  pl_lock; int /*<<< orphan*/  pl_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  STDOUT_FILENO ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 TYPE_2__ zfs_dbgmsgs ; 

void
FUNC6(const char *tag)
{
	ssize_t ret __attribute__((unused));

	/*
	 * We use write() in this function instead of printf()
	 * so it is safe to call from a signal handler.
	 */
	ret = FUNC5(STDOUT_FILENO, "ZFS_DBGMSG(", 11);
	ret = FUNC5(STDOUT_FILENO, tag, FUNC4(tag));
	ret = FUNC5(STDOUT_FILENO, ") START:\n", 9);

	FUNC2(&zfs_dbgmsgs.pl_lock);
	for (zfs_dbgmsg_t *zdm = FUNC0(&zfs_dbgmsgs.pl_list); zdm != NULL;
	    zdm = FUNC1(&zfs_dbgmsgs.pl_list, zdm)) {
		ret = FUNC5(STDOUT_FILENO, zdm->zdm_msg,
		    FUNC4(zdm->zdm_msg));
		ret = FUNC5(STDOUT_FILENO, "\n", 1);
	}

	ret = FUNC5(STDOUT_FILENO, "ZFS_DBGMSG(", 11);
	ret = FUNC5(STDOUT_FILENO, tag, FUNC4(tag));
	ret = FUNC5(STDOUT_FILENO, ") END\n", 6);

	FUNC3(&zfs_dbgmsgs.pl_lock);
}