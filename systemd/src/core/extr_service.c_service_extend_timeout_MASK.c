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
typedef  int /*<<< orphan*/  usec_t ;
struct TYPE_5__ {int /*<<< orphan*/  watchdog_event_source; int /*<<< orphan*/  timer_event_source; } ;
typedef  TYPE_1__ Service ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USEC_INFINITY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(Service *s, usec_t extend_timeout_usec) {
        usec_t extended;

        FUNC1(s);

        if (FUNC0(extend_timeout_usec, 0, USEC_INFINITY))
                return;

        extended = FUNC4(FUNC2(CLOCK_MONOTONIC), extend_timeout_usec);

        FUNC3(s, s->timer_event_source, extended);
        FUNC3(s, s->watchdog_event_source, extended);
}