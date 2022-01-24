#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  id; TYPE_1__* manager; } ;
typedef  TYPE_2__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_13__ {TYPE_2__* seat; } ;
struct TYPE_11__ {int /*<<< orphan*/  sessions; } ;
typedef  TYPE_3__ Session ;
typedef  TYPE_2__ Seat ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_ERROR_NO_SUCH_SESSION ; 
 int /*<<< orphan*/  BUS_ERROR_SESSION_NOT_ON_SEAT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,...) ; 
 int FUNC3 (TYPE_2__*,char*,char const**) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Seat *s = userdata;
        const char *name;
        Session *session;
        int r;

        FUNC0(message);
        FUNC0(s);

        r = FUNC3(message, "s", &name);
        if (r < 0)
                return r;

        session = FUNC1(s->manager->sessions, name);
        if (!session)
                return FUNC2(error, BUS_ERROR_NO_SUCH_SESSION, "No session '%s' known", name);

        if (session->seat != s)
                return FUNC2(error, BUS_ERROR_SESSION_NOT_ON_SEAT, "Session %s not on seat %s", name, s->id);

        r = FUNC5(session);
        if (r < 0)
                return r;

        return FUNC4(message, NULL);
}