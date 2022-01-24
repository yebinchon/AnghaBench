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
typedef  int /*<<< orphan*/  zthr_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  fstrans_cookie_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int arc_c ; 
 int arc_kmem_cache_reap_retry_ms ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  arc_need_free ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int arc_shrink_shift ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *arg, zthr_t *zthr)
{
	int64_t free_memory;
	fstrans_cookie_t cookie = FUNC5();

	/*
	 * Kick off asynchronous kmem_reap()'s of all our caches.
	 */
	FUNC2();

	/*
	 * Wait at least arc_kmem_cache_reap_retry_ms between
	 * arc_kmem_reap_soon() calls. Without this check it is possible to
	 * end up in a situation where we spend lots of time reaping
	 * caches, while we're near arc_c_min.  Waiting here also gives the
	 * subsequent free memory check a chance of finding that the
	 * asynchronous reap has already freed enough memory, and we don't
	 * need to call arc_reduce_target_size().
	 */
	FUNC4((hz * arc_kmem_cache_reap_retry_ms + 999) / 1000);

	/*
	 * Reduce the target size as needed to maintain the amount of free
	 * memory in the system at a fraction of the arc_size (1/128th by
	 * default).  If oversubscribed (free_memory < 0) then reduce the
	 * target arc_size by the deficit amount plus the fractional
	 * amount.  If free memory is positive but less then the fractional
	 * amount, reduce by what is needed to hit the fractional amount.
	 */
	free_memory = FUNC1();

	int64_t to_free =
	    (arc_c >> arc_shrink_shift) - free_memory;
	if (to_free > 0) {
#ifdef _KERNEL
		to_free = MAX(to_free, arc_need_free);
#endif
		FUNC3(to_free);
	}
	FUNC6(cookie);
}