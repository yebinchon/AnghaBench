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
struct TYPE_6__ {int /*<<< orphan*/  user_units; int /*<<< orphan*/  session_units; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  User ;
typedef  int /*<<< orphan*/  Session ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (TYPE_1__*,char*,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        const char *path, *unit;
        Manager *m = userdata;
        Session *session;
        User *user;
        int r;

        FUNC0(message);
        FUNC0(m);

        r = FUNC3(message, "so", &unit, &path);
        if (r < 0) {
                FUNC1(r);
                return 0;
        }

        session = FUNC2(m->session_units, unit);
        if (session)
                FUNC4(session);

        user = FUNC2(m->user_units, unit);
        if (user)
                FUNC5(user);

        return 0;
}