#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfs_dbgmsgs ; 

void
FUNC3(void)
{
	FUNC1(&zfs_dbgmsgs);
	FUNC2(0);

	/*
	 * TODO - decide how to make this permanent
	 */
#ifdef _KERNEL
	procfs_list_destroy(&zfs_dbgmsgs);
#endif
}