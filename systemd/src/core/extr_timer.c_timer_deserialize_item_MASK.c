#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char const Unit ;
typedef  scalar_t__ TimerState ;
typedef  scalar_t__ TimerResult ;
struct TYPE_4__ {int /*<<< orphan*/  monotonic; int /*<<< orphan*/  realtime; } ;
struct TYPE_5__ {TYPE_1__ last_trigger; scalar_t__ result; scalar_t__ deserialized_state; } ;
typedef  TYPE_2__ Timer ;
typedef  char const FDSet ;

/* Variables and functions */
 TYPE_2__* FUNC0 (char const*) ; 
 scalar_t__ TIMER_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(Unit *u, const char *key, const char *value, FDSet *fds) {
        Timer *t = FUNC0(u);

        FUNC1(u);
        FUNC1(key);
        FUNC1(value);
        FUNC1(fds);

        if (FUNC4(key, "state")) {
                TimerState state;

                state = FUNC6(value);
                if (state < 0)
                        FUNC3(u, "Failed to parse state value: %s", value);
                else
                        t->deserialized_state = state;

        } else if (FUNC4(key, "result")) {
                TimerResult f;

                f = FUNC5(value);
                if (f < 0)
                        FUNC3(u, "Failed to parse result value: %s", value);
                else if (f != TIMER_SUCCESS)
                        t->result = f;

        } else if (FUNC4(key, "last-trigger-realtime"))
                (void) FUNC2(value, &t->last_trigger.realtime);
        else if (FUNC4(key, "last-trigger-monotonic"))
                (void) FUNC2(value, &t->last_trigger.monotonic);
        else
                FUNC3(u, "Unknown serialization key: %s", key);

        return 0;
}