#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {scalar_t__ pool_guid; scalar_t__ mmp_sec_remaining; } ;
typedef  TYPE_2__ spa_import_progress_t ;
struct TYPE_8__ {int /*<<< orphan*/  pl_lock; int /*<<< orphan*/  pl_list; } ;
struct TYPE_10__ {scalar_t__ size; TYPE_1__ procfs_list; } ;
typedef  TYPE_3__ spa_history_list_t ;

/* Variables and functions */
 int ENOENT ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* spa_import_progress_list ; 

int
FUNC4(uint64_t pool_guid,
    uint64_t mmp_sec_remaining)
{
	spa_history_list_t *shl = spa_import_progress_list;
	spa_import_progress_t *sip;
	int error = ENOENT;

	if (shl->size == 0)
		return (0);

	FUNC2(&shl->procfs_list.pl_lock);
	for (sip = FUNC1(&shl->procfs_list.pl_list); sip != NULL;
	    sip = FUNC0(&shl->procfs_list.pl_list, sip)) {
		if (sip->pool_guid == pool_guid) {
			sip->mmp_sec_remaining = mmp_sec_remaining;
			error = 0;
			break;
		}
	}
	FUNC3(&shl->procfs_list.pl_lock);

	return (error);
}