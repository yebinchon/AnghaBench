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
typedef  int /*<<< orphan*/  callb_cpr_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  callb_generic_cpr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  dbuf_evict_cv ; 
 int /*<<< orphan*/  dbuf_evict_lock ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ dbuf_evict_thread_exit ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void
FUNC13(void *unused)
{
	callb_cpr_t cpr;

	FUNC1(&cpr, &dbuf_evict_lock, callb_generic_cpr, FTAG);

	FUNC10(&dbuf_evict_lock);
	while (!dbuf_evict_thread_exit) {
		while (!FUNC8() && !dbuf_evict_thread_exit) {
			FUNC2(&cpr);
			(void) FUNC7(&dbuf_evict_cv,
			    &dbuf_evict_lock, FUNC5(1), FUNC4(1), 0);
			FUNC3(&cpr, &dbuf_evict_lock);
		}
		FUNC11(&dbuf_evict_lock);

		/*
		 * Keep evicting as long as we're above the low water mark
		 * for the cache. We do this without holding the locks to
		 * minimize lock contention.
		 */
		while (FUNC8() && !dbuf_evict_thread_exit) {
			FUNC9();
		}

		FUNC10(&dbuf_evict_lock);
	}

	dbuf_evict_thread_exit = B_FALSE;
	FUNC6(&dbuf_evict_cv);
	FUNC0(&cpr);	/* drops dbuf_evict_lock */
	FUNC12();
}