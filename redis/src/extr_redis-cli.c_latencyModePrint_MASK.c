#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ output; } ;

/* Variables and functions */
 scalar_t__ OUTPUT_CSV ; 
 scalar_t__ OUTPUT_RAW ; 
 scalar_t__ OUTPUT_STANDARD ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,long long,long long,double,long long) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC2(long long min, long long max, double avg, long long count) {
    if (config.output == OUTPUT_STANDARD) {
        FUNC1("min: %lld, max: %lld, avg: %.2f (%lld samples)",
                min, max, avg, count);
        FUNC0(stdout);
    } else if (config.output == OUTPUT_CSV) {
        FUNC1("%lld,%lld,%.2f,%lld\n", min, max, avg, count);
    } else if (config.output == OUTPUT_RAW) {
        FUNC1("%lld %lld %.2f %lld\n", min, max, avg, count);
    }
}