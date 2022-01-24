#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {struct TYPE_21__* current_message; int /*<<< orphan*/  iteration_counter; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  TYPE_1__ sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(sd_bus *bus, sd_bus_message *m) {
        int r;

        FUNC0(bus);
        FUNC0(m);

        bus->current_message = m;
        bus->iteration_counter++;

        FUNC2(m);

        r = FUNC6(bus, m);
        if (r != 0)
                goto finish;

        r = FUNC8(bus, m);
        if (r != 0)
                goto finish;

        r = FUNC4(bus, m);
        if (r != 0)
                goto finish;

        r = FUNC5(bus, m);
        if (r != 0)
                goto finish;

        r = FUNC7(bus, m);
        if (r != 0)
                goto finish;

        r = FUNC3(bus, m);
        if (r != 0)
                goto finish;

        r = FUNC1(bus, m);

finish:
        bus->current_message = NULL;
        return r;
}