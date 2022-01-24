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
typedef  int uint64_t ;

/* Variables and functions */
 size_t CACHE_MAX_FALLBACK ; 
 int /*<<< orphan*/  CACHE_MAX_MAX ; 
 int /*<<< orphan*/  CACHE_MAX_MIN ; 
 size_t FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int*,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 

__attribute__((used)) static size_t FUNC4(void) {
        static size_t cached = -1;

        if (cached == (size_t) -1) {
                uint64_t mem_total;
                int r;

                r = FUNC2(&mem_total, NULL);
                if (r < 0) {
                        FUNC1(r, "Cannot query /proc/meminfo for MemTotal: %m");
                        cached = CACHE_MAX_FALLBACK;
                } else
                        /* Cache entries are usually a few kB, but the process cmdline is controlled by the
                         * user and can be up to _SC_ARG_MAX, usually 2MB. Let's say that approximately up to
                         * 1/8th of memory may be used by the cache.
                         *
                         * In the common case, this formula gives 64 cache entries for each GB of RAM.
                         */
                        cached = FUNC0(mem_total / 8 / FUNC3(), CACHE_MAX_MIN, CACHE_MAX_MAX);
        }

        return cached;
}