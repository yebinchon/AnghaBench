#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_4__ {int /*<<< orphan*/ * seat; } ;
typedef  TYPE_1__ Session ;
typedef  int /*<<< orphan*/  Seat ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_ERROR_SESSION_NOT_ON_SEAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char const**,char const**) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        const char *session_name, *seat_name;
        Manager *m = userdata;
        Session *session;
        Seat *seat;
        int r;

        FUNC0(message);
        FUNC0(m);

        /* Same as ActivateSession() but refuses to work if the seat doesn't match */

        r = FUNC4(message, "ss", &session_name, &seat_name);
        if (r < 0)
                return r;

        r = FUNC2(m, message, session_name, error, &session);
        if (r < 0)
                return r;

        r = FUNC1(m, message, seat_name, error, &seat);
        if (r < 0)
                return r;

        if (session->seat != seat)
                return FUNC3(error, BUS_ERROR_SESSION_NOT_ON_SEAT,
                                         "Session %s not on seat %s", session_name, seat_name);

        r = FUNC6(session);
        if (r < 0)
                return r;

        return FUNC5(message, NULL);
}