#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ pool_name; } ;
typedef  TYPE_2__ spa_import_progress_t ;
struct TYPE_7__ {int /*<<< orphan*/  pl_list; } ;
struct TYPE_9__ {unsigned int size; TYPE_1__ procfs_list; } ;
typedef  TYPE_3__ spa_history_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5(spa_history_list_t *shl, unsigned int size)
{
	spa_import_progress_t *sip;
	while (shl->size > size) {
		sip = FUNC3(&shl->procfs_list.pl_list);
		if (sip->pool_name)
			FUNC4(sip->pool_name);
		FUNC1(sip, sizeof (spa_import_progress_t));
		shl->size--;
	}

	FUNC0(size == 0, FUNC2(&shl->procfs_list.pl_list));
}