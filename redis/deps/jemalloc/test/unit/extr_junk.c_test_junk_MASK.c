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
typedef  char uint8_t ;

/* Variables and functions */
 char JEMALLOC_ALLOC_JUNK ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arena_dalloc_junk_small ; 
 int /*<<< orphan*/  arena_dalloc_junk_small_intercept ; 
 int /*<<< orphan*/  arena_dalloc_junk_small_orig ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char,char,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (size_t,size_t,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  large_dalloc_junk ; 
 int /*<<< orphan*/  large_dalloc_junk_intercept ; 
 int /*<<< orphan*/  large_dalloc_junk_orig ; 
 int /*<<< orphan*/  large_dalloc_maybe_junk ; 
 int /*<<< orphan*/  large_dalloc_maybe_junk_intercept ; 
 int /*<<< orphan*/  large_dalloc_maybe_junk_orig ; 
 scalar_t__ FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ opt_junk_alloc ; 
 scalar_t__ opt_junk_free ; 
 scalar_t__ FUNC9 (char*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ saw_junking ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 size_t FUNC12 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(size_t sz_min, size_t sz_max) {
	uint8_t *s;
	size_t sz_prev, sz, i;

	if (opt_junk_free) {
		arena_dalloc_junk_small_orig = arena_dalloc_junk_small;
		arena_dalloc_junk_small = arena_dalloc_junk_small_intercept;
		large_dalloc_junk_orig = large_dalloc_junk;
		large_dalloc_junk = large_dalloc_junk_intercept;
		large_dalloc_maybe_junk_orig = large_dalloc_maybe_junk;
		large_dalloc_maybe_junk = large_dalloc_maybe_junk_intercept;
	}

	sz_prev = 0;
	s = (uint8_t *)FUNC8(sz_min, 0);
	FUNC2((void *)s, "Unexpected mallocx() failure");

	for (sz = FUNC10(s, 0); sz <= sz_max;
	    sz_prev = sz, sz = FUNC10(s, 0)) {
		if (sz_prev > 0) {
			FUNC4(s[0], 'a',
			    "Previously allocated byte %zu/%zu is corrupted",
			    FUNC0(0), sz_prev);
			FUNC4(s[sz_prev-1], 'a',
			    "Previously allocated byte %zu/%zu is corrupted",
			    sz_prev-1, sz_prev);
		}

		for (i = sz_prev; i < sz; i++) {
			if (opt_junk_alloc) {
				FUNC4(s[i], JEMALLOC_ALLOC_JUNK,
				    "Newly allocated byte %zu/%zu isn't "
				    "junk-filled", i, sz);
			}
			s[i] = 'a';
		}

		if (FUNC12(s, sz+1, 0, 0) == sz) {
			uint8_t *t;
			FUNC11(s);
			t = (uint8_t *)FUNC9(s, sz+1, 0);
			FUNC2((void *)t,
			    "Unexpected rallocx() failure");
			FUNC5(FUNC10(t, 0), sz+1,
			    "Unexpectedly small rallocx() result");
			if (!FUNC6()) {
				FUNC1(s, t,
				    "Unexpected in-place rallocx()");
				FUNC3(!opt_junk_free || saw_junking,
				    "Expected region of size %zu to be "
				    "junk-filled", sz);
			}
			s = t;
		}
	}

	FUNC11(s);
	FUNC7(s, 0);
	FUNC3(!opt_junk_free || saw_junking,
	    "Expected region of size %zu to be junk-filled", sz);

	if (opt_junk_free) {
		arena_dalloc_junk_small = arena_dalloc_junk_small_orig;
		large_dalloc_junk = large_dalloc_junk_orig;
		large_dalloc_maybe_junk = large_dalloc_maybe_junk_orig;
	}
}