#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  sk_km_lock; int /*<<< orphan*/  sk_key_mappings; } ;
struct TYPE_18__ {TYPE_1__ spa_keystore; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_19__ {int /*<<< orphan*/  km_refcnt; int /*<<< orphan*/  km_key; int /*<<< orphan*/  km_dsobj; } ;
typedef  TYPE_3__ dsl_key_mapping_t ;
struct TYPE_20__ {int /*<<< orphan*/  ds_object; int /*<<< orphan*/  ds_dir; } ;
typedef  TYPE_4__ dsl_dataset_t ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  RW_WRITER ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 TYPE_3__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int
FUNC11(spa_t *spa, dsl_dataset_t *ds, void *tag,
    dsl_key_mapping_t **km_out)
{
	int ret;
	avl_index_t where;
	dsl_key_mapping_t *km, *found_km;
	boolean_t should_free = B_FALSE;

	/* Allocate and initialize the mapping */
	km = FUNC3(sizeof (dsl_key_mapping_t), KM_SLEEP);
	FUNC9(&km->km_refcnt);

	ret = FUNC6(spa, ds->ds_dir, km, &km->km_key);
	if (ret != 0) {
		FUNC10(&km->km_refcnt);
		FUNC2(km, sizeof (dsl_key_mapping_t));

		if (km_out != NULL)
			*km_out = NULL;
		return (ret);
	}

	km->km_dsobj = ds->ds_object;

	FUNC4(&spa->spa_keystore.sk_km_lock, RW_WRITER);

	/*
	 * If a mapping already exists, simply increment its refcount and
	 * cleanup the one we made. We want to allocate / free outside of
	 * the lock because this lock is also used by the zio layer to lookup
	 * key mappings. Otherwise, use the one we created. Normally, there will
	 * only be one active reference at a time (the objset owner), but there
	 * are times when there could be multiple async users.
	 */
	found_km = FUNC0(&spa->spa_keystore.sk_key_mappings, km, &where);
	if (found_km != NULL) {
		should_free = B_TRUE;
		FUNC8(&found_km->km_refcnt, tag);
		if (km_out != NULL)
			*km_out = found_km;
	} else {
		FUNC8(&km->km_refcnt, tag);
		FUNC1(&spa->spa_keystore.sk_key_mappings, km, where);
		if (km_out != NULL)
			*km_out = km;
	}

	FUNC5(&spa->spa_keystore.sk_km_lock);

	if (should_free) {
		FUNC7(spa, km->km_key, km);
		FUNC10(&km->km_refcnt);
		FUNC2(km, sizeof (dsl_key_mapping_t));
	}

	return (0);
}