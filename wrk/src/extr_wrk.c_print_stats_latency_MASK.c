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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  stats ;
typedef  int /*<<< orphan*/  percentiles ;

/* Variables and functions */
 int /*<<< orphan*/  format_time_us ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long double) ; 

__attribute__((used)) static void FUNC3(stats *stats) {
    long double percentiles[] = { 50.0, 75.0, 90.0, 99.0 };
    FUNC1("  Latency Distribution\n");
    for (size_t i = 0; i < sizeof(percentiles) / sizeof(long double); i++) {
        long double p = percentiles[i];
        uint64_t n = FUNC2(stats, p);
        FUNC1("%7.0Lf%%", p);
        FUNC0(n, format_time_us, 10);
        FUNC1("\n");
    }
}