#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_5__* unit; int /*<<< orphan*/  bus_track; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_12__ {int /*<<< orphan*/  manager; } ;
typedef  TYPE_1__ Job ;

/* Variables and functions */
 int /*<<< orphan*/  JOB_CANCELED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (TYPE_5__*,TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Job *j = userdata;
        int r;

        FUNC0(message);
        FUNC0(j);

        r = FUNC3(j->unit, message, "stop", error);
        if (r < 0)
                return r;

        /* Access is granted to the job owner */
        if (!FUNC6(j->bus_track, FUNC4(message))) {

                /* And for everybody else consult polkit */
                r = FUNC1(j->unit->manager, message, error);
                if (r < 0)
                        return r;
                if (r == 0)
                        return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */
        }

        FUNC2(j, JOB_CANCELED, true, false);

        return FUNC5(message, NULL);
}