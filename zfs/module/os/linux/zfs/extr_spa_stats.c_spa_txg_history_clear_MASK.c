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
typedef  int /*<<< orphan*/  spa_history_list_t ;
struct TYPE_3__ {int /*<<< orphan*/  pl_lock; int /*<<< orphan*/ * pl_private; } ;
typedef  TYPE_1__ procfs_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(procfs_list_t *procfs_list)
{
	spa_history_list_t *shl = procfs_list->pl_private;
	FUNC0(&procfs_list->pl_lock);
	FUNC2(shl, 0);
	FUNC1(&procfs_list->pl_lock);
	return (0);
}