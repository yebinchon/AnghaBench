#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  spa_config; } ;
typedef  TYPE_1__ spa_t ;
struct TYPE_13__ {int /*<<< orphan*/  spa_load_state; int /*<<< orphan*/  pool_name; int /*<<< orphan*/  pool_guid; } ;
typedef  TYPE_2__ spa_import_progress_t ;
struct TYPE_15__ {int /*<<< orphan*/  pl_lock; } ;
struct TYPE_14__ {TYPE_9__ procfs_list; int /*<<< orphan*/  size; } ;
typedef  TYPE_3__ spa_history_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 TYPE_2__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_3__* spa_import_progress_list ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 char* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void
FUNC9(spa_t *spa)
{
	spa_history_list_t *shl = spa_import_progress_list;
	spa_import_progress_t *sip;
	char *poolname = NULL;

	sip = FUNC0(sizeof (spa_import_progress_t), KM_SLEEP);
	sip->pool_guid = FUNC5(spa);

	(void) FUNC3(spa->spa_config, ZPOOL_CONFIG_POOL_NAME,
	    &poolname);
	if (poolname == NULL)
		poolname = FUNC7(spa);
	sip->pool_name = FUNC8(poolname);
	sip->spa_load_state = FUNC6(spa);

	FUNC1(&shl->procfs_list.pl_lock);
	FUNC4(&shl->procfs_list, sip);
	shl->size++;
	FUNC2(&shl->procfs_list.pl_lock);
}