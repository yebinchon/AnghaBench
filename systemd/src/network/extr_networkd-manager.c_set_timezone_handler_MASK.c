#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_message ;
struct TYPE_5__ {int /*<<< orphan*/  message; } ;
typedef  TYPE_1__ sd_bus_error ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(sd_bus_message *m, void *userdata, sd_bus_error *ret_error) {
        Manager *manager = userdata;
        const sd_bus_error *e;

        FUNC0(m);
        FUNC0(manager);

        e = FUNC3(m);
        if (e)
                FUNC1(FUNC2(e), "Could not set timezone: %s", e->message);

        return 1;
}