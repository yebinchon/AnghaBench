#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zprop_source_t ;
typedef  int /*<<< orphan*/  zpool_prop_t ;
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_7__ {int za_integer_length; int /*<<< orphan*/  za_num_integers; int /*<<< orphan*/  za_name; int /*<<< orphan*/  za_first_integer; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {scalar_t__ spa_pool_props_object; int /*<<< orphan*/  spa_props_lock; int /*<<< orphan*/ * spa_meta_objset; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZPOOL_PROP_BOOTFS ; 
 int /*<<< orphan*/  ZPOOL_PROP_INVAL ; 
 int /*<<< orphan*/  ZPROP_SRC_DEFAULT ; 
 int /*<<< orphan*/  ZPROP_SRC_LOCAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC17 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC18 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

int
FUNC21(spa_t *spa, nvlist_t **nvp)
{
	objset_t *mos = spa->spa_meta_objset;
	zap_cursor_t zc;
	zap_attribute_t za;
	int err;

	err = FUNC9(nvp, NV_UNIQUE_NAME, KM_SLEEP);
	if (err)
		return (err);

	FUNC7(&spa->spa_props_lock);

	/*
	 * Get properties from the spa config.
	 */
	FUNC13(spa, nvp);

	/* If no pool property object, no more prop to get. */
	if (mos == NULL || spa->spa_pool_props_object == 0) {
		FUNC8(&spa->spa_props_lock);
		goto out;
	}

	/*
	 * Get properties from the MOS pool property object.
	 */
	for (FUNC16(&zc, mos, spa->spa_pool_props_object);
	    (err = FUNC17(&zc, &za)) == 0;
	    FUNC14(&zc)) {
		uint64_t intval = 0;
		char *strval = NULL;
		zprop_source_t src = ZPROP_SRC_DEFAULT;
		zpool_prop_t prop;

		if ((prop = FUNC19(za.za_name)) == ZPOOL_PROP_INVAL)
			continue;

		switch (za.za_integer_length) {
		case 8:
			/* integer property */
			if (za.za_first_integer !=
			    FUNC20(prop))
				src = ZPROP_SRC_LOCAL;

			if (prop == ZPOOL_PROP_BOOTFS) {
				dsl_pool_t *dp;
				dsl_dataset_t *ds = NULL;

				dp = FUNC11(spa);
				FUNC3(dp, FTAG);
				err = FUNC0(dp,
				    za.za_first_integer, FTAG, &ds);
				if (err != 0) {
					FUNC4(dp, FTAG);
					break;
				}

				strval = FUNC5(ZFS_MAX_DATASET_NAME_LEN,
				    KM_SLEEP);
				FUNC1(ds, strval);
				FUNC2(ds, FTAG);
				FUNC4(dp, FTAG);
			} else {
				strval = NULL;
				intval = za.za_first_integer;
			}

			FUNC12(*nvp, prop, strval, intval, src);

			if (strval != NULL)
				FUNC6(strval, ZFS_MAX_DATASET_NAME_LEN);

			break;

		case 1:
			/* string property */
			strval = FUNC5(za.za_num_integers, KM_SLEEP);
			err = FUNC18(mos, spa->spa_pool_props_object,
			    za.za_name, 1, za.za_num_integers, strval);
			if (err) {
				FUNC6(strval, za.za_num_integers);
				break;
			}
			FUNC12(*nvp, prop, strval, 0, src);
			FUNC6(strval, za.za_num_integers);
			break;

		default:
			break;
		}
	}
	FUNC15(&zc);
	FUNC8(&spa->spa_props_lock);
out:
	if (err && err != ENOENT) {
		FUNC10(*nvp);
		*nvp = NULL;
		return (err);
	}

	return (0);
}