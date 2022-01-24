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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  result; int /*<<< orphan*/  jobs; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ BusWaitForJobs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ *,char const**,char const**,char const**) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        const char *path, *unit, *result;
        BusWaitForJobs *d = userdata;
        uint32_t id;
        char *found;
        int r;

        FUNC0(m);
        FUNC0(d);

        r = FUNC5(m, "uoss", &id, &path, &unit, &result);
        if (r < 0) {
                FUNC1(r);
                return 0;
        }

        found = FUNC6(d->jobs, (char*) path);
        if (!found)
                return 0;

        FUNC3(found);

        (void) FUNC4(&d->result, FUNC2(result));

        (void) FUNC4(&d->name, FUNC2(unit));

        return 0;
}