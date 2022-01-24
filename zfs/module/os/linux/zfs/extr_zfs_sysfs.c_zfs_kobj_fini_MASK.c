#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ zko_child_count; int /*<<< orphan*/  zko_kobj; struct TYPE_4__* zko_children; } ;
typedef  TYPE_1__ zfs_mod_kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(zfs_mod_kobj_t *zkobj)
{
	/* finalize any child kobjects */
	if (zkobj->zko_child_count != 0) {
		FUNC0(zkobj->zko_children);
		for (int i = 0; i < zkobj->zko_child_count; i++)
			FUNC3(&zkobj->zko_children[i]);
	}

	/* kobject_put() will call zfs_kobj_release() to release memory */
	FUNC1(&zkobj->zko_kobj);
	FUNC2(&zkobj->zko_kobj);
}