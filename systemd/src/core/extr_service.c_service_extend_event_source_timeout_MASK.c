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
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_5__ {int /*<<< orphan*/  timer_event_source; } ;
typedef  TYPE_1__ Service ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const**) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static void FUNC7(Service *s, sd_event_source *source, usec_t extended) {
        usec_t current;
        int r;

        FUNC1(s);

        /* Extends the specified event source timer to at least the specified time, unless it is already later
         * anyway. */

        if (!source)
                return;

        r = FUNC4(source, &current);
        if (r < 0) {
                const char *desc;
                (void) FUNC3(s->timer_event_source, &desc);
                FUNC2(FUNC0(s), r, "Failed to retrieve timeout time for event source '%s', ignoring: %m", FUNC6(desc));
                return;
        }

        if (current >= extended) /* Current timeout is already longer, ignore this. */
                return;

        r = FUNC5(source, extended);
        if (r < 0) {
                const char *desc;
                (void) FUNC3(s->timer_event_source, &desc);
                FUNC2(FUNC0(s), r, "Failed to set timeout time for even source '%s', ignoring %m", FUNC6(desc));
        }
}