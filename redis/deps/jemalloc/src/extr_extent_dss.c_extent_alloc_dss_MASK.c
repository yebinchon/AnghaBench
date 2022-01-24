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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (uintptr_t,size_t) ; 
 int /*<<< orphan*/  ATOMIC_ACQUIRE ; 
 int /*<<< orphan*/  ATOMIC_RELEASE ; 
 int /*<<< orphan*/ * EXTENT_HOOKS_INITIALIZER ; 
 int NSIZES ; 
 scalar_t__ FUNC1 (uintptr_t) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dss_exhausted ; 
 int /*<<< orphan*/  dss_max ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 void* FUNC13 (void*) ; 
 void* FUNC14 (intptr_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t,size_t,int,int,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  extent_state_active ; 
 int /*<<< orphan*/  have_dss ; 
 int /*<<< orphan*/  FUNC17 (void*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC18 (void*,size_t) ; 

void *
FUNC19(tsdn_t *tsdn, arena_t *arena, void *new_addr, size_t size,
    size_t alignment, bool *zero, bool *commit) {
	extent_t *gap;

	FUNC7(have_dss);
	FUNC3(size > 0);
	FUNC3(alignment > 0);

	/*
	 * sbrk() uses a signed increment argument, so take care not to
	 * interpret a large allocation request as a negative increment.
	 */
	if ((intptr_t)size < 0) {
		return NULL;
	}

	gap = FUNC8(tsdn, arena);
	if (gap == NULL) {
		return NULL;
	}

	FUNC12();
	if (!FUNC4(&dss_exhausted, ATOMIC_ACQUIRE)) {
		/*
		 * The loop is necessary to recover from races with other
		 * threads that are using the DSS for something other than
		 * malloc.
		 */
		while (true) {
			void *max_cur = FUNC13(new_addr);
			if (max_cur == NULL) {
				goto label_oom;
			}

			/*
			 * Compute how much page-aligned gap space (if any) is
			 * necessary to satisfy alignment.  This space can be
			 * recycled for later use.
			 */
			void *gap_addr_page = (void *)(FUNC1(
			    (uintptr_t)max_cur));
			void *ret = (void *)FUNC0(
			    (uintptr_t)gap_addr_page, alignment);
			size_t gap_size_page = (uintptr_t)ret -
			    (uintptr_t)gap_addr_page;
			if (gap_size_page != 0) {
				FUNC15(gap, arena, gap_addr_page,
				    gap_size_page, false, NSIZES,
				    FUNC2(arena),
				    extent_state_active, false, true, true);
			}
			/*
			 * Compute the address just past the end of the desired
			 * allocation space.
			 */
			void *dss_next = (void *)((uintptr_t)ret + size);
			if ((uintptr_t)ret < (uintptr_t)max_cur ||
			    (uintptr_t)dss_next < (uintptr_t)max_cur) {
				goto label_oom; /* Wrap-around. */
			}
			/* Compute the increment, including subpage bytes. */
			void *gap_addr_subpage = max_cur;
			size_t gap_size_subpage = (uintptr_t)ret -
			    (uintptr_t)gap_addr_subpage;
			intptr_t incr = gap_size_subpage + size;

			FUNC3((uintptr_t)max_cur + incr == (uintptr_t)ret +
			    size);

			/* Try to allocate. */
			void *dss_prev = FUNC14(incr);
			if (dss_prev == max_cur) {
				/* Success. */
				FUNC6(&dss_max, dss_next,
				    ATOMIC_RELEASE);
				FUNC11();

				if (gap_size_page != 0) {
					FUNC10(tsdn, arena, gap);
				} else {
					FUNC9(tsdn, arena, gap);
				}
				if (!*commit) {
					*commit = FUNC18(ret, size);
				}
				if (*zero && *commit) {
					extent_hooks_t *extent_hooks =
					    EXTENT_HOOKS_INITIALIZER;
					extent_t extent;

					FUNC15(&extent, arena, ret, size,
					    size, false, NSIZES,
					    extent_state_active, false, true,
					    true);
					if (FUNC16(tsdn,
					    arena, &extent_hooks, &extent, 0,
					    size)) {
						FUNC17(ret, 0, size);
					}
				}
				return ret;
			}
			/*
			 * Failure, whether due to OOM or a race with a raw
			 * sbrk() call from outside the allocator.
			 */
			if (dss_prev == (void *)-1) {
				/* OOM. */
				FUNC5(&dss_exhausted, true,
				    ATOMIC_RELEASE);
				goto label_oom;
			}
		}
	}
label_oom:
	FUNC11();
	FUNC9(tsdn, arena, gap);
	return NULL;
}