#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct prof_tdata_merge_iter_arg_s {int /*<<< orphan*/  cnt_all; void* tsdn; } ;
struct prof_gctx_merge_iter_arg_s {scalar_t__ leak_ngctx; void* tsdn; } ;
typedef  int /*<<< orphan*/  prof_tdata_t ;
typedef  int /*<<< orphan*/  prof_gctx_tree_t ;
typedef  int /*<<< orphan*/  prof_gctx_t ;
typedef  int /*<<< orphan*/  prof_cnt_t ;

/* Variables and functions */
 int /*<<< orphan*/  bt2gctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prof_gctx_merge_iter ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prof_tdata_merge_iter ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  tdatas ; 
 int /*<<< orphan*/  tdatas_mtx ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(tsd_t *tsd, prof_tdata_t *tdata,
    struct prof_tdata_merge_iter_arg_s *prof_tdata_merge_iter_arg,
    struct prof_gctx_merge_iter_arg_s *prof_gctx_merge_iter_arg,
    prof_gctx_tree_t *gctxs) {
	size_t tabind;
	union {
		prof_gctx_t	*p;
		void		*v;
	} gctx;

	FUNC7(tsd, tdata);

	/*
	 * Put gctx's in limbo and clear their counters in preparation for
	 * summing.
	 */
	FUNC2(gctxs);
	for (tabind = 0; !FUNC0(&bt2gctx, &tabind, NULL, &gctx.v);) {
		FUNC6(FUNC10(tsd), gctx.p, gctxs);
	}

	/*
	 * Iterate over tdatas, and for the non-expired ones snapshot their tctx
	 * stats and merge them into the associated gctx's.
	 */
	prof_tdata_merge_iter_arg->tsdn = FUNC10(tsd);
	FUNC5(&prof_tdata_merge_iter_arg->cnt_all, 0, sizeof(prof_cnt_t));
	FUNC3(FUNC10(tsd), &tdatas_mtx);
	FUNC9(&tdatas, NULL, prof_tdata_merge_iter,
	    (void *)prof_tdata_merge_iter_arg);
	FUNC4(FUNC10(tsd), &tdatas_mtx);

	/* Merge tctx stats into gctx's. */
	prof_gctx_merge_iter_arg->tsdn = FUNC10(tsd);
	prof_gctx_merge_iter_arg->leak_ngctx = 0;
	FUNC1(gctxs, NULL, prof_gctx_merge_iter,
	    (void *)prof_gctx_merge_iter_arg);

	FUNC8(tsd, tdata);
}