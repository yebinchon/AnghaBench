#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int enable_wall_messages; int /*<<< orphan*/  wall_message; int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int FUNC5 (TYPE_1__*,char*,char**,unsigned int*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        int r;
        Manager *m = userdata;
        char *wall_message;
        unsigned enable_wall_messages;

        FUNC0(message);
        FUNC0(m);

        r = FUNC5(message, "sb", &wall_message, &enable_wall_messages);
        if (r < 0)
                return r;

        r = FUNC1(message,
                                    CAP_SYS_ADMIN,
                                    "org.freedesktop.login1.set-wall-message",
                                    NULL,
                                    false,
                                    UID_INVALID,
                                    &m->polkit_registry,
                                    error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* Will call us back */

        r = FUNC3(&m->wall_message, FUNC2(wall_message));
        if (r < 0)
                return FUNC4();

        m->enable_wall_messages = enable_wall_messages;

        return FUNC6(message, NULL);
}