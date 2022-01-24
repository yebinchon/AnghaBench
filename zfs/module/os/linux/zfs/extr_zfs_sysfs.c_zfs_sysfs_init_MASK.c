#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct TYPE_2__ {struct kobject kobj; } ;
struct module {TYPE_1__ mkobj; } ;

/* Variables and functions */
 scalar_t__ THIS_MODULE ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  ZFS_TYPE_POOL ; 
 int /*<<< orphan*/  dataset_props_kobj ; 
 int /*<<< orphan*/  fs_kobj ; 
 int /*<<< orphan*/  kernel_features_kobj ; 
 struct kobject* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pool_features_kobj ; 
 int /*<<< orphan*/  pool_props_kobj ; 
 int FUNC1 (int /*<<< orphan*/ *,struct kobject*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct kobject*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct kobject*,int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{
	struct kobject *parent;
#if defined(CONFIG_ZFS) && !defined(CONFIG_ZFS_MODULE)
	parent = kobject_create_and_add("zfs", fs_kobj);
#else
	parent = &(((struct module *)(THIS_MODULE))->mkobj).kobj;
#endif
	int err;

	if (parent == NULL)
		return;

	err = FUNC1(&kernel_features_kobj, parent);
	if (err)
		return;

	err = FUNC3(&pool_features_kobj, parent);
	if (err) {
		FUNC2(&kernel_features_kobj);
		return;
	}

	err = FUNC4(&pool_props_kobj, parent,
	    ZFS_TYPE_POOL);
	if (err) {
		FUNC2(&kernel_features_kobj);
		FUNC2(&pool_features_kobj);
		return;
	}

	err = FUNC4(&dataset_props_kobj, parent,
	    ZFS_TYPE_FILESYSTEM);
	if (err) {
		FUNC2(&kernel_features_kobj);
		FUNC2(&pool_features_kobj);
		FUNC2(&pool_props_kobj);
		return;
	}
}