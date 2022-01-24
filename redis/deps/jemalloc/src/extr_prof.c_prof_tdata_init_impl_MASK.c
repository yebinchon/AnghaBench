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
typedef  void* uint64_t ;
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_6__ {char* thread_name; int attached; int expired; int enq; int enq_idump; int enq_gdump; int dumping; int active; void* prng_state; int /*<<< orphan*/  bt2tctx; scalar_t__ tctx_uid_next; void* thr_discrim; void* thr_uid; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ prof_tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  PROF_CKH_MINITEMS ; 
 int /*<<< orphan*/  TSDN_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prof_bt_hash ; 
 int /*<<< orphan*/  prof_bt_keycomp ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  tdatas ; 
 int /*<<< orphan*/  tdatas_mtx ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static prof_tdata_t *
FUNC12(tsd_t *tsd, uint64_t thr_uid, uint64_t thr_discrim,
    char *thread_name, bool active) {
	prof_tdata_t *tdata;

	FUNC1(config_prof);

	/* Initialize an empty cache for this thread. */
	tdata = (prof_tdata_t *)FUNC3(FUNC11(tsd), sizeof(prof_tdata_t),
	    FUNC9(sizeof(prof_tdata_t)), false, NULL, true,
	    FUNC0(TSDN_NULL, 0, true), true);
	if (tdata == NULL) {
		return NULL;
	}

	tdata->lock = FUNC8(thr_uid);
	tdata->thr_uid = thr_uid;
	tdata->thr_discrim = thr_discrim;
	tdata->thread_name = thread_name;
	tdata->attached = true;
	tdata->expired = false;
	tdata->tctx_uid_next = 0;

	if (FUNC2(tsd, &tdata->bt2tctx, PROF_CKH_MINITEMS, prof_bt_hash,
	    prof_bt_keycomp)) {
		FUNC4(FUNC11(tsd), tdata, NULL, NULL, true, true);
		return NULL;
	}

	tdata->prng_state = (uint64_t)(uintptr_t)tdata;
	FUNC7(tdata);

	tdata->enq = false;
	tdata->enq_idump = false;
	tdata->enq_gdump = false;

	tdata->dumping = false;
	tdata->active = active;

	FUNC5(FUNC11(tsd), &tdatas_mtx);
	FUNC10(&tdatas, tdata);
	FUNC6(FUNC11(tsd), &tdatas_mtx);

	return tdata;
}