#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  long double uint64_t ;
struct TYPE_6__ {long double max; } ;
typedef  TYPE_1__ stats ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long double,char* (*) (long double),int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 long double FUNC2 (TYPE_1__*) ; 
 long double FUNC3 (TYPE_1__*,long double) ; 
 char* FUNC4 (TYPE_1__*,long double,long double,int) ; 

__attribute__((used)) static void FUNC5(char *name, stats *stats, char *(*fmt)(long double)) {
    uint64_t max = stats->max;
    long double mean  = FUNC2(stats);
    long double stdev = FUNC3(stats, mean);

    FUNC1("    %-10s", name);
    FUNC0(mean,  fmt, 8);
    FUNC0(stdev, fmt, 10);
    FUNC0(max,   fmt, 9);
    FUNC1("%8.2Lf%%\n", FUNC4(stats, mean, stdev, 1));
}