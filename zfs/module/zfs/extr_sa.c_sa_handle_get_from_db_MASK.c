#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sa_handle_type_t ;
struct TYPE_14__ {int /*<<< orphan*/ * dbu_evict_func_async; int /*<<< orphan*/ * dbu_evict_func_sync; } ;
struct TYPE_12__ {TYPE_9__ sa_dbu; int /*<<< orphan*/ * sa_spill_tab; int /*<<< orphan*/ * sa_bonus_tab; int /*<<< orphan*/ * sa_spill; int /*<<< orphan*/ * sa_os; int /*<<< orphan*/ * sa_bonus; void* sa_userp; } ;
typedef  TYPE_1__ sa_handle_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_13__ {scalar_t__ doi_bonus_type; } ;
typedef  TYPE_2__ dmu_object_info_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DMU_OT_SA ; 
 scalar_t__ DMU_OT_ZNODE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  SA_BONUS ; 
 scalar_t__ SA_HDL_SHARED ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sa_cache ; 
 int /*<<< orphan*/  sa_evict_sync ; 

int
FUNC8(objset_t *os, dmu_buf_t *db, void *userp,
    sa_handle_type_t hdl_type, sa_handle_t **handlepp)
{
	int error = 0;
	sa_handle_t *handle = NULL;
#ifdef ZFS_DEBUG
	dmu_object_info_t doi;

	dmu_object_info_from_db(db, &doi);
	ASSERT(doi.doi_bonus_type == DMU_OT_SA ||
	    doi.doi_bonus_type == DMU_OT_ZNODE);
#endif
	/* find handle, if it exists */
	/* if one doesn't exist then create a new one, and initialize it */

	if (hdl_type == SA_HDL_SHARED)
		handle = FUNC1(db);

	if (handle == NULL) {
		sa_handle_t *winner = NULL;

		handle = FUNC5(sa_cache, KM_SLEEP);
		handle->sa_dbu.dbu_evict_func_sync = NULL;
		handle->sa_dbu.dbu_evict_func_async = NULL;
		handle->sa_userp = userp;
		handle->sa_bonus = db;
		handle->sa_os = os;
		handle->sa_spill = NULL;
		handle->sa_bonus_tab = NULL;
		handle->sa_spill_tab = NULL;

		error = FUNC7(handle, SA_BONUS);

		if (hdl_type == SA_HDL_SHARED) {
			FUNC2(&handle->sa_dbu, sa_evict_sync, NULL,
			    NULL);
			winner = FUNC3(db, &handle->sa_dbu);
		}

		if (winner != NULL) {
			FUNC6(sa_cache, handle);
			handle = winner;
		}
	}
	*handlepp = handle;

	return (error);
}