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
typedef  scalar_t__ usec_t ;
struct TYPE_6__ {scalar_t__ scheduled_shutdown_timeout; scalar_t__ wall_message_timeout_source; int /*<<< orphan*/  event; int /*<<< orphan*/  scheduled_shutdown_type; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 int USEC_PER_MINUTE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  wall_message_timeout_handler ; 
 int FUNC7 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

int FUNC9(Manager *m) {

        usec_t n, elapse;
        int r;

        FUNC0(m);

        n = FUNC3(CLOCK_REALTIME);
        elapse = m->scheduled_shutdown_timeout;

        /* wall message handling */

        if (FUNC1(m->scheduled_shutdown_type)) {
                FUNC7(m, n);
                return 0;
        }

        if (elapse < n)
                return 0;

        /* Warn immediately if less than 15 minutes are left */
        if (elapse - n < 15 * USEC_PER_MINUTE) {
                r = FUNC7(m, n);
                if (r == 0)
                        return 0;
        }

        elapse = FUNC8(n, elapse);
        if (elapse == 0)
                return 0;

        if (m->wall_message_timeout_source) {
                r = FUNC6(m->wall_message_timeout_source, n + elapse);
                if (r < 0)
                        return FUNC2(r, "sd_event_source_set_time() failed. %m");

                r = FUNC5(m->wall_message_timeout_source, SD_EVENT_ONESHOT);
                if (r < 0)
                        return FUNC2(r, "sd_event_source_set_enabled() failed. %m");
        } else {
                r = FUNC4(m->event, &m->wall_message_timeout_source,
                                      CLOCK_REALTIME, n + elapse, 0, wall_message_timeout_handler, m);
                if (r < 0)
                        return FUNC2(r, "sd_event_add_time() failed. %m");
        }

        return 0;
}