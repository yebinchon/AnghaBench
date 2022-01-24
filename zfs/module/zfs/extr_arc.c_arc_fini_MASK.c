#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  p_refcnt; } ;
typedef  TYPE_1__ arc_prune_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  arc_adjust_lock ; 
 int /*<<< orphan*/  arc_adjust_waiters_cv ; 
 int /*<<< orphan*/  arc_adjust_zthr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arc_initialized ; 
 int /*<<< orphan*/ * arc_ksp ; 
 int /*<<< orphan*/  arc_loaned_bytes ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  arc_prune_list ; 
 int /*<<< orphan*/  arc_prune_mtx ; 
 int /*<<< orphan*/  arc_prune_taskq ; 
 int /*<<< orphan*/  arc_reap_zthr ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

void
FUNC20(void)
{
	arc_prune_t *p;

#ifdef _KERNEL
	arc_lowmem_fini();
#endif /* _KERNEL */

	/* Use B_TRUE to ensure *all* buffers are evicted */
	FUNC1(NULL, B_TRUE);

	arc_initialized = B_FALSE;

	if (arc_ksp != NULL) {
		FUNC7(arc_ksp);
		arc_ksp = NULL;
	}

	FUNC15(arc_prune_taskq);
	FUNC14(arc_prune_taskq);

	FUNC12(&arc_prune_mtx);
	while ((p = FUNC9(&arc_prune_list)) != NULL) {
		FUNC10(&arc_prune_list, p);
		FUNC17(&p->p_refcnt, &arc_prune_list);
		FUNC16(&p->p_refcnt);
		FUNC6(p, sizeof (*p));
	}
	FUNC13(&arc_prune_mtx);

	FUNC8(&arc_prune_list);
	FUNC11(&arc_prune_mtx);

	(void) FUNC18(arc_adjust_zthr);
	(void) FUNC18(arc_reap_zthr);

	FUNC11(&arc_adjust_lock);
	FUNC5(&arc_adjust_waiters_cv);

	/*
	 * buf_fini() must proceed arc_state_fini() because buf_fin() may
	 * trigger the release of kmem magazines, which can callback to
	 * arc_space_return() which accesses aggsums freed in act_state_fini().
	 */
	FUNC4();
	FUNC3();

	/*
	 * We destroy the zthrs after all the ARC state has been
	 * torn down to avoid the case of them receiving any
	 * wakeup() signals after they are destroyed.
	 */
	FUNC19(arc_adjust_zthr);
	FUNC19(arc_reap_zthr);

	FUNC0(arc_loaned_bytes);
}