#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  procfs_list; } ;
struct TYPE_6__ {TYPE_3__ mmp_history; } ;
struct TYPE_7__ {TYPE_1__ spa_stats; } ;
typedef  TYPE_2__ spa_t ;
typedef  TYPE_3__ spa_history_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(spa_t *spa)
{
	spa_history_list_t *shl = &spa->spa_stats.mmp_history;
	FUNC1(&shl->procfs_list);
	FUNC2(shl, 0);
	FUNC0(&shl->procfs_list);
}