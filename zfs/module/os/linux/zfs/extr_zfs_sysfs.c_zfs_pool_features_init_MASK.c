#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zko_kobj; } ;
typedef  TYPE_1__ zfs_mod_kobj_t ;
struct kobject {int dummy; } ;
typedef  size_t spa_feature_t ;
struct TYPE_8__ {int /*<<< orphan*/  fi_guid; } ;

/* Variables and functions */
 size_t SPA_FEATURES ; 
 int /*<<< orphan*/  ZFS_SYSFS_POOL_FEATURES ; 
 int /*<<< orphan*/  pool_feature_show ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 
 TYPE_5__* spa_feature_table ; 
 int FUNC1 (TYPE_1__*,struct kobject*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(zfs_mod_kobj_t *zfs_kobj, struct kobject *parent)
{
	/*
	 * Create a parent kobject to host pool features.
	 *
	 * '/sys/module/zfs/features.pool'
	 */
	int err = FUNC2(zfs_kobj, 0, SPA_FEATURES, pool_feature_show);
	if (err)
		return (err);
	err = FUNC1(zfs_kobj, parent, ZFS_SYSFS_POOL_FEATURES);
	if (err) {
		FUNC3(&zfs_kobj->zko_kobj);
		return (err);
	}

	/*
	 * Now create a kobject for each feature.
	 *
	 * '/sys/module/zfs/features.pool/<feature>'
	 */
	for (spa_feature_t i = 0; i < SPA_FEATURES; i++)
		FUNC0(zfs_kobj, i, spa_feature_table[i].fi_guid);

	return (0);
}