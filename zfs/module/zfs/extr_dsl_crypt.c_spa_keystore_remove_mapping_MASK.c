#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  sk_km_lock; int /*<<< orphan*/  sk_key_mappings; } ;
struct TYPE_10__ {TYPE_1__ spa_keystore; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_11__ {int /*<<< orphan*/  km_dsobj; } ;
typedef  TYPE_3__ dsl_key_mapping_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  RW_READER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(spa_t *spa, uint64_t dsobj, void *tag)
{
	int ret;
	dsl_key_mapping_t search_km;
	dsl_key_mapping_t *found_km;

	/* init the search key mapping */
	search_km.km_dsobj = dsobj;

	FUNC3(&spa->spa_keystore.sk_km_lock, RW_READER);

	/* find the matching mapping */
	found_km = FUNC1(&spa->spa_keystore.sk_key_mappings,
	    &search_km, NULL);
	if (found_km == NULL) {
		ret = FUNC0(ENOENT);
		goto error_unlock;
	}

	FUNC4(&spa->spa_keystore.sk_km_lock);

	FUNC2(spa, found_km, tag);

	return (0);

error_unlock:
	FUNC4(&spa->spa_keystore.sk_km_lock);
	return (ret);
}