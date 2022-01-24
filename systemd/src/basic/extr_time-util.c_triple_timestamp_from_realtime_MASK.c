#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
struct TYPE_5__ {scalar_t__ boottime; scalar_t__ monotonic; scalar_t__ realtime; } ;
typedef  TYPE_1__ triple_timestamp ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_BOOTTIME ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 scalar_t__ USEC_INFINITY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

triple_timestamp* FUNC4(triple_timestamp *ts, usec_t u) {
        int64_t delta;

        FUNC0(ts);

        if (u == USEC_INFINITY || u <= 0) {
                ts->realtime = ts->monotonic = ts->boottime = u;
                return ts;
        }

        ts->realtime = u;
        delta = (int64_t) FUNC2(CLOCK_REALTIME) - (int64_t) u;
        ts->monotonic = FUNC3(FUNC2(CLOCK_MONOTONIC), delta);
        ts->boottime = FUNC1() ? FUNC3(FUNC2(CLOCK_BOOTTIME), delta) : USEC_INFINITY;

        return ts;
}