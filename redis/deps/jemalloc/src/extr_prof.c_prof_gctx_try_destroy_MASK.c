#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  prof_tdata_t ;
struct TYPE_4__ {int nlimbo; int /*<<< orphan*/  lock; int /*<<< orphan*/  bt; int /*<<< orphan*/  tctxs; } ;
typedef  TYPE_1__ prof_gctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bt2gctx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(tsd_t *tsd, prof_tdata_t *tdata_self, prof_gctx_t *gctx,
    prof_tdata_t *tdata) {
	FUNC1(config_prof);

	/*
	 * Check that gctx is still unused by any thread cache before destroying
	 * it.  prof_lookup() increments gctx->nlimbo in order to avoid a race
	 * condition with this function, as does prof_tctx_destroy() in order to
	 * avoid a race between the main body of prof_tctx_destroy() and entry
	 * into this function.
	 */
	FUNC7(tsd, tdata_self);
	FUNC4(FUNC10(tsd), gctx->lock);
	FUNC0(gctx->nlimbo != 0);
	if (FUNC9(&gctx->tctxs) && gctx->nlimbo == 1) {
		/* Remove gctx from bt2gctx. */
		if (FUNC2(tsd, &bt2gctx, &gctx->bt, NULL, NULL)) {
			FUNC6();
		}
		FUNC8(tsd, tdata_self);
		/* Destroy gctx. */
		FUNC5(FUNC10(tsd), gctx->lock);
		FUNC3(FUNC10(tsd), gctx, NULL, NULL, true, true);
	} else {
		/*
		 * Compensate for increment in prof_tctx_destroy() or
		 * prof_lookup().
		 */
		gctx->nlimbo--;
		FUNC5(FUNC10(tsd), gctx->lock);
		FUNC8(tsd, tdata_self);
	}
}