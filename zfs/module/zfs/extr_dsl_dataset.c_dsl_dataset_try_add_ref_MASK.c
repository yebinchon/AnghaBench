#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_7__ {int /*<<< orphan*/  ds_object; int /*<<< orphan*/ * ds_dbuf; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_BONUS_BLKID ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

boolean_t
FUNC3(dsl_pool_t *dp, dsl_dataset_t *ds, void *tag)
{
	dmu_buf_t *dbuf = ds->ds_dbuf;
	boolean_t result = B_FALSE;

	if (dbuf != NULL && FUNC2(dbuf, dp->dp_meta_objset,
	    ds->ds_object, DMU_BONUS_BLKID, tag)) {

		if (ds == FUNC0(dbuf))
			result = B_TRUE;
		else
			FUNC1(dbuf, tag);
	}

	return (result);
}