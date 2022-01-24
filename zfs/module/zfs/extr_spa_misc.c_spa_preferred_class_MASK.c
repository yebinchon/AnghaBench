#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_13__ {TYPE_3__* spa_dedup_class; TYPE_2__* spa_special_class; TYPE_1__* spa_log_class; } ;
typedef  TYPE_4__ spa_t ;
typedef  int /*<<< orphan*/  metaslab_class_t ;
typedef  scalar_t__ dmu_object_type_t ;
typedef  int boolean_t ;
struct TYPE_12__ {scalar_t__ mc_groups; } ;
struct TYPE_11__ {scalar_t__ mc_groups; } ;
struct TYPE_10__ {scalar_t__ mc_groups; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ DMU_OT_ZVOL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_4__*) ; 
 scalar_t__ zfs_ddt_data_is_special ; 
 int zfs_special_class_metadata_reserve_pct ; 
 scalar_t__ zfs_user_indirect_is_special ; 

metaslab_class_t *
FUNC10(spa_t *spa, uint64_t size, dmu_object_type_t objtype,
    uint_t level, uint_t special_smallblk)
{
	if (FUNC3(objtype)) {
		if (spa->spa_log_class->mc_groups != 0)
			return (FUNC7(spa));
		else
			return (FUNC8(spa));
	}

	boolean_t has_special_class = spa->spa_special_class->mc_groups != 0;

	if (FUNC0(objtype)) {
		if (spa->spa_dedup_class->mc_groups != 0)
			return (FUNC6(spa));
		else if (has_special_class && zfs_ddt_data_is_special)
			return (FUNC9(spa));
		else
			return (FUNC8(spa));
	}

	/* Indirect blocks for user data can land in special if allowed */
	if (level > 0 && (FUNC1(objtype) || objtype == DMU_OT_ZVOL)) {
		if (has_special_class && zfs_user_indirect_is_special)
			return (FUNC9(spa));
		else
			return (FUNC8(spa));
	}

	if (FUNC2(objtype) || level > 0) {
		if (has_special_class)
			return (FUNC9(spa));
		else
			return (FUNC8(spa));
	}

	/*
	 * Allow small file blocks in special class in some cases (like
	 * for the dRAID vdev feature). But always leave a reserve of
	 * zfs_special_class_metadata_reserve_pct exclusively for metadata.
	 */
	if (FUNC1(objtype) &&
	    has_special_class && size <= special_smallblk) {
		metaslab_class_t *special = FUNC9(spa);
		uint64_t alloc = FUNC4(special);
		uint64_t space = FUNC5(special);
		uint64_t limit =
		    (space * (100 - zfs_special_class_metadata_reserve_pct))
		    / 100;

		if (alloc < limit)
			return (special);
	}

	return (FUNC8(spa));
}