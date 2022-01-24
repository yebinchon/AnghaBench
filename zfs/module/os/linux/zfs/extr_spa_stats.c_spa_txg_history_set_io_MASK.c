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
struct TYPE_12__ {scalar_t__ txg; scalar_t__ ndirty; scalar_t__ writes; scalar_t__ reads; scalar_t__ nwritten; scalar_t__ nread; } ;
typedef  TYPE_3__ spa_txg_history_t ;
struct TYPE_11__ {int /*<<< orphan*/  pl_lock; int /*<<< orphan*/  pl_list; } ;
struct TYPE_14__ {TYPE_2__ procfs_list; } ;
struct TYPE_10__ {TYPE_5__ txg_history; } ;
struct TYPE_13__ {TYPE_1__ spa_stats; } ;
typedef  TYPE_4__ spa_t ;
typedef  TYPE_5__ spa_history_list_t ;

/* Variables and functions */
 int ENOENT ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ zfs_txg_history ; 

__attribute__((used)) static int
FUNC4(spa_t *spa, uint64_t txg, uint64_t nread,
    uint64_t nwritten, uint64_t reads, uint64_t writes, uint64_t ndirty)
{
	spa_history_list_t *shl = &spa->spa_stats.txg_history;
	spa_txg_history_t *sth;
	int error = ENOENT;

	if (zfs_txg_history == 0)
		return (0);

	FUNC2(&shl->procfs_list.pl_lock);
	for (sth = FUNC1(&shl->procfs_list.pl_list); sth != NULL;
	    sth = FUNC0(&shl->procfs_list.pl_list, sth)) {
		if (sth->txg == txg) {
			sth->nread = nread;
			sth->nwritten = nwritten;
			sth->reads = reads;
			sth->writes = writes;
			sth->ndirty = ndirty;
			error = 0;
			break;
		}
	}
	FUNC3(&shl->procfs_list.pl_lock);

	return (error);
}