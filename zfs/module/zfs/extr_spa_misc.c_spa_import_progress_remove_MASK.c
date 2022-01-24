#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_11__ {scalar_t__ pool_guid; scalar_t__ pool_name; } ;
typedef  TYPE_2__ spa_import_progress_t ;
struct TYPE_10__ {int /*<<< orphan*/  pl_lock; int /*<<< orphan*/  pl_list; } ;
struct TYPE_12__ {TYPE_1__ procfs_list; int /*<<< orphan*/  size; } ;
typedef  TYPE_3__ spa_history_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* spa_import_progress_list ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void
FUNC7(uint64_t pool_guid)
{
	spa_history_list_t *shl = spa_import_progress_list;
	spa_import_progress_t *sip;

	FUNC4(&shl->procfs_list.pl_lock);
	for (sip = FUNC3(&shl->procfs_list.pl_list); sip != NULL;
	    sip = FUNC1(&shl->procfs_list.pl_list, sip)) {
		if (sip->pool_guid == pool_guid) {
			if (sip->pool_name)
				FUNC6(sip->pool_name);
			FUNC2(&shl->procfs_list.pl_list, sip);
			shl->size--;
			FUNC0(sip, sizeof (spa_import_progress_t));
			break;
		}
	}
	FUNC5(&shl->procfs_list.pl_lock);
}