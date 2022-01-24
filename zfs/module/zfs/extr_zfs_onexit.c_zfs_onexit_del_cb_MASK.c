#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  zo_lock; int /*<<< orphan*/  zo_actions; } ;
typedef  TYPE_1__ zfs_onexit_t ;
struct TYPE_9__ {int /*<<< orphan*/  za_data; int /*<<< orphan*/  (* za_func ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ zfs_onexit_action_node_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  minor_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_1__**) ; 

int
FUNC8(minor_t minor, uint64_t action_handle, boolean_t fire)
{
	zfs_onexit_t *zo;
	zfs_onexit_action_node_t *ap;
	int error;

	error = FUNC7(minor, &zo);
	if (error)
		return (error);

	FUNC3(&zo->zo_lock);
	ap = FUNC6(zo, action_handle);
	if (ap != NULL) {
		FUNC2(&zo->zo_actions, ap);
		FUNC4(&zo->zo_lock);
		if (fire)
			ap->za_func(ap->za_data);
		FUNC1(ap, sizeof (zfs_onexit_action_node_t));
	} else {
		FUNC4(&zo->zo_lock);
		error = FUNC0(ENOENT);
	}

	return (error);
}