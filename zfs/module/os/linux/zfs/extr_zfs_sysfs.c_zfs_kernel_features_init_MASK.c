#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  zko_kobj; } ;
typedef  TYPE_1__ zfs_mod_kobj_t ;
struct kobject {int dummy; } ;

/* Variables and functions */
 int KERNEL_FEATURE_COUNT ; 
 int /*<<< orphan*/  ZFS_SYSFS_KERNEL_FEATURES ; 
 int /*<<< orphan*/  kernel_feature_show ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * zfs_kernel_features ; 
 int FUNC1 (TYPE_1__*,struct kobject*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(zfs_mod_kobj_t *zfs_kobj, struct kobject *parent)
{
	/*
	 * Create a parent kobject to host kernel features.
	 *
	 * '/sys/module/zfs/features.kernel'
	 */
	int err = FUNC2(zfs_kobj, 0, KERNEL_FEATURE_COUNT,
	    kernel_feature_show);
	if (err)
		return (err);
	err = FUNC1(zfs_kobj, parent, ZFS_SYSFS_KERNEL_FEATURES);
	if (err) {
		FUNC3(&zfs_kobj->zko_kobj);
		return (err);
	}

	/*
	 * Now create a kobject for each feature.
	 *
	 * '/sys/module/zfs/features.kernel/<feature>'
	 */
	for (int f = 0; f < KERNEL_FEATURE_COUNT; f++)
		FUNC0(zfs_kobj, f, zfs_kernel_features[f]);

	return (0);
}