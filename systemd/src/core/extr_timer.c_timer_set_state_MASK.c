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
typedef  scalar_t__ TimerState ;
struct TYPE_5__ {scalar_t__ state; void* next_elapse_realtime; void* next_elapse_monotonic_or_boottime; void* realtime_event_source; void* monotonic_event_source; } ;
typedef  TYPE_1__ Timer ;

/* Variables and functions */
 scalar_t__ TIMER_WAITING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* USEC_INFINITY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/ * state_translation_table ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(Timer *t, TimerState state) {
        TimerState old_state;
        FUNC1(t);

        if (t->state != state)
                FUNC2(FUNC0(t), false);

        old_state = t->state;
        t->state = state;

        if (state != TIMER_WAITING) {
                t->monotonic_event_source = FUNC4(t->monotonic_event_source);
                t->realtime_event_source = FUNC4(t->realtime_event_source);
                t->next_elapse_monotonic_or_boottime = USEC_INFINITY;
                t->next_elapse_realtime = USEC_INFINITY;
        }

        if (state != old_state)
                FUNC3(FUNC0(t), "Changed %s -> %s", FUNC5(old_state), FUNC5(state));

        FUNC6(FUNC0(t), state_translation_table[old_state], state_translation_table[state], 0);
}