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
typedef  scalar_t__ usec_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 unsigned long long MEASURE_ITERATIONS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,double) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void) {
        unsigned long long i;
        usec_t t, q;

        t = FUNC3(CLOCK_MONOTONIC);
        for (i = 0; i < MEASURE_ITERATIONS; i++)
                (void) FUNC0();
        q = FUNC3(CLOCK_MONOTONIC) - t;

        FUNC2(" glibc getpid(): %lf µs each\n", (double) q / MEASURE_ITERATIONS);

        t = FUNC3(CLOCK_MONOTONIC);
        for (i = 0; i < MEASURE_ITERATIONS; i++)
                (void) FUNC1();
        q = FUNC3(CLOCK_MONOTONIC) - t;

        FUNC2("getpid_cached(): %lf µs each\n", (double) q / MEASURE_ITERATIONS);
}