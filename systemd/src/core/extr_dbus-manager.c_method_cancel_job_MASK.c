#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  Manager ;
typedef  int /*<<< orphan*/  Job ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_ERROR_NO_SUCH_JOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 

__attribute__((used)) static int FUNC5(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        uint32_t id;
        Job *j;
        int r;

        FUNC0(message);
        FUNC0(m);

        r = FUNC4(message, "u", &id);
        if (r < 0)
                return r;

        j = FUNC2(m, id);
        if (!j)
                return FUNC3(error, BUS_ERROR_NO_SUCH_JOB, "Job %u does not exist.", (unsigned) id);

        return FUNC1(message, j, error);
}