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
struct TYPE_6__ {int zdm_size; int /*<<< orphan*/  zdm_msg; int /*<<< orphan*/  zdm_timestamp; } ;
typedef  TYPE_1__ zfs_dbgmsg_t ;
struct TYPE_7__ {int /*<<< orphan*/  pl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  zfs_dbgmsg_maxsize ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int zfs_dbgmsg_size ; 
 TYPE_2__ zfs_dbgmsgs ; 

void
FUNC9(char *buf)
{
	int size = sizeof (zfs_dbgmsg_t) + FUNC7(buf);
	zfs_dbgmsg_t *zdm = FUNC2(size, KM_SLEEP);
	zdm->zdm_size = size;
	zdm->zdm_timestamp = FUNC1();
	FUNC6(zdm->zdm_msg, buf);

	FUNC3(&zfs_dbgmsgs.pl_lock);
	FUNC5(&zfs_dbgmsgs, zdm);
	zfs_dbgmsg_size += size;
	FUNC8(FUNC0(zfs_dbgmsg_maxsize, 0));
	FUNC4(&zfs_dbgmsgs.pl_lock);
}