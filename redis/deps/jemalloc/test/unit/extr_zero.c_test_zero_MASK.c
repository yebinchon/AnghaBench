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
typedef  int uint8_t ;

/* Variables and functions */
 int MAGIC ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int*,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(size_t sz_min, size_t sz_max) {
	uint8_t *s;
	size_t sz_prev, sz, i;
#define MAGIC	((uint8_t)0x61)

	sz_prev = 0;
	s = (uint8_t *)FUNC4(sz_min, 0);
	FUNC1((void *)s, "Unexpected mallocx() failure");

	for (sz = FUNC6(s, 0); sz <= sz_max;
	    sz_prev = sz, sz = FUNC6(s, 0)) {
		if (sz_prev > 0) {
			FUNC2(s[0], MAGIC,
			    "Previously allocated byte %zu/%zu is corrupted",
			    FUNC0(0), sz_prev);
			FUNC2(s[sz_prev-1], MAGIC,
			    "Previously allocated byte %zu/%zu is corrupted",
			    sz_prev-1, sz_prev);
		}

		for (i = sz_prev; i < sz; i++) {
			FUNC2(s[i], 0x0,
			    "Newly allocated byte %zu/%zu isn't zero-filled",
			    i, sz);
			s[i] = MAGIC;
		}

		if (FUNC7(s, sz+1, 0, 0) == sz) {
			s = (uint8_t *)FUNC5(s, sz+1, 0);
			FUNC1((void *)s,
			    "Unexpected rallocx() failure");
		}
	}

	FUNC3(s, 0);
#undef MAGIC
}