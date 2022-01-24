#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sd_event_time_handler_t ;
struct TYPE_16__ {scalar_t__ description; } ;
typedef  TYPE_1__ sd_event_source ;
typedef  TYPE_1__* sd_event ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ clockid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int SD_EVENT_OFF ; 
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int FUNC2 (int,char*,...) ; 
 int FUNC3 (TYPE_1__**,TYPE_1__**,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (TYPE_1__*,int*) ; 
 int FUNC5 (TYPE_1__*,scalar_t__*) ; 
 int FUNC6 (TYPE_1__*,char const*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,void*) ; 
 char const* FUNC12 (char const*) ; 

int FUNC13(
                sd_event *e,
                sd_event_source **s,
                clockid_t clock,
                uint64_t usec,
                uint64_t accuracy,
                sd_event_time_handler_t callback,
                void *userdata,
                int64_t priority,
                const char *description,
                bool force_reset) {

        bool created = false;
        int enabled, r;
        clockid_t c;

        FUNC1(e);
        FUNC1(s);

        if (*s) {
                if (!force_reset) {
                        r = FUNC4(*s, &enabled);
                        if (r < 0)
                                return FUNC2(r, "sd-event: Failed to query whether event source \"%s\" is enabled or not: %m",
                                                       FUNC12((*s)->description ?: description));

                        if (enabled != SD_EVENT_OFF)
                                return 0;
                }

                r = FUNC5(*s, &c);
                if (r < 0)
                        return FUNC2(r, "sd-event: Failed to get clock id of event source \"%s\": %m", FUNC12((*s)->description ?: description));

                if (c != clock)
                        return FUNC2(FUNC0(EINVAL),
                                               "sd-event: Current clock id %i of event source \"%s\" is different from specified one %i.",
                                               (int)c,
                                               FUNC12((*s)->description ? : description),
                                               (int)clock);

                r = FUNC9(*s, usec);
                if (r < 0)
                        return FUNC2(r, "sd-event: Failed to set time for event source \"%s\": %m", FUNC12((*s)->description ?: description));

                r = FUNC10(*s, accuracy);
                if (r < 0)
                        return FUNC2(r, "sd-event: Failed to set accuracy for event source \"%s\": %m", FUNC12((*s)->description ?: description));

                /* callback function is not updated, as we do not have sd_event_source_set_time_callback(). */

                (void) FUNC11(*s, userdata);

                r = FUNC7(*s, SD_EVENT_ONESHOT);
                if (r < 0)
                        return FUNC2(r, "sd-event: Failed to enable event source \"%s\": %m", FUNC12((*s)->description ?: description));
        } else {
                r = FUNC3(e, s, clock, usec, accuracy, callback, userdata);
                if (r < 0)
                        return FUNC2(r, "sd-event: Failed to create timer event \"%s\": %m", FUNC12(description));

                created = true;
        }

        r = FUNC8(*s, priority);
        if (r < 0)
                return FUNC2(r, "sd-event: Failed to set priority for event source \"%s\": %m", FUNC12((*s)->description ?: description));

        if (description) {
                r = FUNC6(*s, description);
                if (r < 0)
                        return FUNC2(r, "sd-event: Failed to set description for event source \"%s\": %m", description);
        }

        return created;
}