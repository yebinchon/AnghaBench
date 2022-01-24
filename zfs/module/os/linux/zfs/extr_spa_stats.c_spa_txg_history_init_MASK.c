#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* pl_private; } ;
struct TYPE_9__ {TYPE_6__ procfs_list; scalar_t__ size; } ;
struct TYPE_7__ {TYPE_3__ txg_history; } ;
struct TYPE_8__ {TYPE_1__ spa_stats; } ;
typedef  TYPE_2__ spa_t ;
typedef  TYPE_3__ spa_history_list_t ;

/* Variables and functions */
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  spa_txg_history_clear ; 
 int /*<<< orphan*/  spa_txg_history_show ; 
 int /*<<< orphan*/  spa_txg_history_show_header ; 
 int /*<<< orphan*/  spa_txg_history_t ; 
 int /*<<< orphan*/  sth_node ; 

__attribute__((used)) static void
FUNC5(spa_t *spa)
{
	spa_history_list_t *shl = &spa->spa_stats.txg_history;
	char *module;

	shl->size = 0;

	module = FUNC0("zfs/%s", FUNC4(spa));

	shl->procfs_list.pl_private = shl;
	FUNC3(module,
	    "txgs",
	    0644,
	    &shl->procfs_list,
	    spa_txg_history_show,
	    spa_txg_history_show_header,
	    spa_txg_history_clear,
	    FUNC2(spa_txg_history_t, sth_node));

	FUNC1(module);
}