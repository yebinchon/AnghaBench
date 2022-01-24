#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_11__ {void* dl_havecache; void* dl_havetree; TYPE_5__* dl_dbuf; int /*<<< orphan*/  dl_phys; void* dl_oldfmt; int /*<<< orphan*/  dl_bpobj; int /*<<< orphan*/  dl_object; int /*<<< orphan*/ * dl_os; int /*<<< orphan*/  dl_lock; } ;
typedef  TYPE_1__ dsl_deadlist_t ;
struct TYPE_12__ {scalar_t__ doi_type; } ;
typedef  TYPE_2__ dmu_object_info_t ;
struct TYPE_13__ {int /*<<< orphan*/  db_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* B_FALSE ; 
 void* B_TRUE ; 
 scalar_t__ DMU_OT_BPOBJ ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC8(dsl_deadlist_t *dl, objset_t *os, uint64_t object)
{
	dmu_object_info_t doi;

	FUNC0(!FUNC6(dl));

	FUNC7(&dl->dl_lock, NULL, MUTEX_DEFAULT, NULL);
	dl->dl_os = os;
	dl->dl_object = object;
	FUNC1(FUNC3(os, object, dl, &dl->dl_dbuf));
	FUNC5(dl->dl_dbuf, &doi);
	if (doi.doi_type == DMU_OT_BPOBJ) {
		FUNC4(dl->dl_dbuf, dl);
		dl->dl_dbuf = NULL;
		dl->dl_oldfmt = B_TRUE;
		FUNC1(FUNC2(&dl->dl_bpobj, os, object));
		return;
	}

	dl->dl_oldfmt = B_FALSE;
	dl->dl_phys = dl->dl_dbuf->db_data;
	dl->dl_havetree = B_FALSE;
	dl->dl_havecache = B_FALSE;
}