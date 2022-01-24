#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_11__ {int /*<<< orphan*/  pl_lock; int /*<<< orphan*/  pl_list; } ;
struct TYPE_14__ {scalar_t__ size; TYPE_2__ procfs_list; } ;
struct TYPE_10__ {TYPE_5__ mmp_history; } ;
struct TYPE_12__ {TYPE_1__ spa_stats; } ;
typedef  TYPE_3__ spa_t ;
struct TYPE_13__ {scalar_t__ mmp_node_id; int io_error; int /*<<< orphan*/  duration; } ;
typedef  TYPE_4__ spa_mmp_history_t ;
typedef  TYPE_5__ spa_history_list_t ;
typedef  int /*<<< orphan*/  hrtime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ zfs_multihost_history ; 

int
FUNC5(spa_t *spa, uint64_t mmp_node_id, int io_error,
    hrtime_t duration)
{
	spa_history_list_t *shl = &spa->spa_stats.mmp_history;
	spa_mmp_history_t *smh;
	int error = ENOENT;

	if (zfs_multihost_history == 0 && shl->size == 0)
		return (0);

	FUNC3(&shl->procfs_list.pl_lock);
	for (smh = FUNC2(&shl->procfs_list.pl_list); smh != NULL;
	    smh = FUNC1(&shl->procfs_list.pl_list, smh)) {
		if (smh->mmp_node_id == mmp_node_id) {
			FUNC0(smh->io_error == 0);
			smh->io_error = io_error;
			smh->duration = duration;
			error = 0;
			break;
		}
	}
	FUNC4(&shl->procfs_list.pl_lock);

	return (error);
}