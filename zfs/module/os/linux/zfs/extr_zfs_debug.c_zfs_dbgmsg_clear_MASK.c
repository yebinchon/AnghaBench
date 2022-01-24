#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  procfs_list_t ;
struct TYPE_2__ {int /*<<< orphan*/  pl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ zfs_dbgmsgs ; 

__attribute__((used)) static int
FUNC3(procfs_list_t *procfs_list)
{
	FUNC0(&zfs_dbgmsgs.pl_lock);
	FUNC2(0);
	FUNC1(&zfs_dbgmsgs.pl_lock);
	return (0);
}