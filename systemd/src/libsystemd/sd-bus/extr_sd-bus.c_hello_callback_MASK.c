#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ state; int /*<<< orphan*/  unique_name; struct TYPE_10__* bus; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_CLOSING ; 
 scalar_t__ BUS_HELLO ; 
 int /*<<< orphan*/  BUS_RUNNING ; 
 int EBADMSG ; 
 TYPE_1__* FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(sd_bus_message *reply, void *userdata, sd_bus_error *error) {
        const char *s;
        sd_bus *bus;
        int r;

        FUNC1(reply);
        bus = reply->bus;
        FUNC1(bus);
        FUNC1(FUNC0(bus->state, BUS_HELLO, BUS_CLOSING));

        r = FUNC4(reply);
        if (r > 0) {
                r = -r;
                goto fail;
        }

        r = FUNC5(reply, "s", &s);
        if (r < 0)
                goto fail;

        if (!FUNC6(s) || s[0] != ':') {
                r = -EBADMSG;
                goto fail;
        }

        r = FUNC3(&bus->unique_name, s);
        if (r < 0)
                goto fail;

        if (bus->state == BUS_HELLO) {
                FUNC2(bus, BUS_RUNNING);

                r = FUNC7(bus);
                if (r < 0)
                        goto fail;
        }

        return 1;

fail:
        /* When Hello() failed, let's propagate this in two ways: first we return the error immediately here,
         * which is the propagated up towards the event loop. Let's also invalidate the connection, so that
         * if the user then calls back into us again we won't wait any longer. */

        FUNC2(bus, BUS_CLOSING);
        return r;
}