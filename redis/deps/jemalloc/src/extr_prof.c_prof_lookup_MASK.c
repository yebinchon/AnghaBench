#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_12__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  bt2tctx; int /*<<< orphan*/  tctx_uid_next; int /*<<< orphan*/  thr_discrim; int /*<<< orphan*/  thr_uid; } ;
typedef  TYPE_1__ prof_tdata_t ;
struct TYPE_13__ {int prepared; int /*<<< orphan*/  state; scalar_t__ tctx_uid; TYPE_3__* gctx; int /*<<< orphan*/  cnts; int /*<<< orphan*/  thr_discrim; int /*<<< orphan*/  thr_uid; TYPE_1__* tdata; } ;
typedef  TYPE_2__ prof_tctx_t ;
struct TYPE_14__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  nlimbo; int /*<<< orphan*/  tctxs; } ;
typedef  TYPE_3__ prof_gctx_t ;
typedef  int /*<<< orphan*/  prof_cnt_t ;
typedef  int /*<<< orphan*/  prof_bt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,void*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  config_prof ; 
 void* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_3__*,TYPE_1__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,void**,TYPE_3__**,int*) ; 
 int /*<<< orphan*/  prof_tctx_state_initializing ; 
 int /*<<< orphan*/  prof_tctx_state_nominal ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

prof_tctx_t *
FUNC15(tsd_t *tsd, prof_bt_t *bt) {
	union {
		prof_tctx_t	*p;
		void		*v;
	} ret;
	prof_tdata_t *tdata;
	bool not_found;

	FUNC1(config_prof);

	tdata = FUNC11(tsd, false);
	if (tdata == NULL) {
		return NULL;
	}

	FUNC6(FUNC14(tsd), tdata->lock);
	not_found = FUNC3(&tdata->bt2tctx, bt, NULL, &ret.v);
	if (!not_found) { /* Note double negative! */
		ret.p->prepared = true;
	}
	FUNC7(FUNC14(tsd), tdata->lock);
	if (not_found) {
		void *btkey;
		prof_gctx_t *gctx;
		bool new_gctx, error;

		/*
		 * This thread's cache lacks bt.  Look for it in the global
		 * cache.
		 */
		if (FUNC10(tsd, bt, tdata, &btkey, &gctx,
		    &new_gctx)) {
			return NULL;
		}

		/* Link a prof_tctx_t into gctx for this thread. */
		ret.v = FUNC4(FUNC14(tsd), sizeof(prof_tctx_t),
		    FUNC12(sizeof(prof_tctx_t)), false, NULL, true,
		    FUNC0(tsd, NULL), true);
		if (ret.p == NULL) {
			if (new_gctx) {
				FUNC9(tsd, tdata, gctx, tdata);
			}
			return NULL;
		}
		ret.p->tdata = tdata;
		ret.p->thr_uid = tdata->thr_uid;
		ret.p->thr_discrim = tdata->thr_discrim;
		FUNC8(&ret.p->cnts, 0, sizeof(prof_cnt_t));
		ret.p->gctx = gctx;
		ret.p->tctx_uid = tdata->tctx_uid_next++;
		ret.p->prepared = true;
		ret.p->state = prof_tctx_state_initializing;
		FUNC6(FUNC14(tsd), tdata->lock);
		error = FUNC2(tsd, &tdata->bt2tctx, btkey, ret.v);
		FUNC7(FUNC14(tsd), tdata->lock);
		if (error) {
			if (new_gctx) {
				FUNC9(tsd, tdata, gctx, tdata);
			}
			FUNC5(FUNC14(tsd), ret.v, NULL, NULL, true, true);
			return NULL;
		}
		FUNC6(FUNC14(tsd), gctx->lock);
		ret.p->state = prof_tctx_state_nominal;
		FUNC13(&gctx->tctxs, ret.p);
		gctx->nlimbo--;
		FUNC7(FUNC14(tsd), gctx->lock);
	}

	return ret.p;
}