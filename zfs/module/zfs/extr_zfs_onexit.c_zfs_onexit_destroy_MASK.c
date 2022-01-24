#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zo_lock; int /*<<< orphan*/  zo_actions; int /*<<< orphan*/  za_data; int /*<<< orphan*/  (* za_func ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ zfs_onexit_t ;
typedef  TYPE_1__ zfs_onexit_action_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(zfs_onexit_t *zo)
{
	zfs_onexit_action_node_t *ap;

	FUNC5(&zo->zo_lock);
	while ((ap = FUNC2(&zo->zo_actions)) != NULL) {
		FUNC3(&zo->zo_actions, ap);
		FUNC6(&zo->zo_lock);
		ap->za_func(ap->za_data);
		FUNC0(ap, sizeof (zfs_onexit_action_node_t));
		FUNC5(&zo->zo_lock);
	}
	FUNC6(&zo->zo_lock);

	FUNC1(&zo->zo_actions);
	FUNC4(&zo->zo_lock);
	FUNC0(zo, sizeof (zfs_onexit_t));
}