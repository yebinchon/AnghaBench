#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int zv_changed; int /*<<< orphan*/  zv_state_lock; int /*<<< orphan*/  zv_suspend_lock; int /*<<< orphan*/ * zv_objset; scalar_t__ zv_volsize; } ;
typedef  TYPE_1__ zvol_state_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_10__ {int /*<<< orphan*/  doi_data_block_size; } ;
typedef  TYPE_2__ dmu_object_info_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_11__ {int /*<<< orphan*/  (* zv_update_volsize ) (TYPE_1__*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  DMU_OST_ZVOL ; 
 int EROFS ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_READER ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  ZFS_PROP_READONLY ; 
 int /*<<< orphan*/  ZVOL_OBJ ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_5__* ops ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC16 (scalar_t__,int /*<<< orphan*/ *) ; 

int
FUNC17(const char *name, uint64_t volsize)
{
	objset_t *os = NULL;
	uint64_t readonly;
	int error;
	boolean_t owned = B_FALSE;

	error = FUNC7(name,
	    FUNC13(ZFS_PROP_READONLY), &readonly, NULL);
	if (error != 0)
		return (FUNC3(error));
	if (readonly)
		return (FUNC3(EROFS));

	zvol_state_t *zv = FUNC15(name, RW_READER);

	FUNC0(zv == NULL || (FUNC1(&zv->zv_state_lock) &&
	    FUNC2(&zv->zv_suspend_lock)));

	if (zv == NULL || zv->zv_objset == NULL) {
		if (zv != NULL)
			FUNC11(&zv->zv_suspend_lock);
		if ((error = FUNC6(name, DMU_OST_ZVOL, B_FALSE, B_TRUE,
		    FTAG, &os)) != 0) {
			if (zv != NULL)
				FUNC10(&zv->zv_state_lock);
			return (FUNC3(error));
		}
		owned = B_TRUE;
		if (zv != NULL)
			zv->zv_objset = os;
	} else {
		os = zv->zv_objset;
	}

	dmu_object_info_t *doi = FUNC8(sizeof (*doi), KM_SLEEP);

	if ((error = FUNC4(os, ZVOL_OBJ, doi)) ||
	    (error = FUNC14(volsize, doi->doi_data_block_size)))
		goto out;

	error = FUNC16(volsize, os);
	if (error == 0 && zv != NULL) {
		zv->zv_volsize = volsize;
		zv->zv_changed = 1;
	}
out:
	FUNC9(doi, sizeof (dmu_object_info_t));

	if (owned) {
		FUNC5(os, B_TRUE, FTAG);
		if (zv != NULL)
			zv->zv_objset = NULL;
	} else {
		FUNC11(&zv->zv_suspend_lock);
	}

	if (zv != NULL)
		FUNC10(&zv->zv_state_lock);

	if (error == 0 && zv != NULL)
		ops->zv_update_volsize(zv, volsize);

	return (FUNC3(error));
}