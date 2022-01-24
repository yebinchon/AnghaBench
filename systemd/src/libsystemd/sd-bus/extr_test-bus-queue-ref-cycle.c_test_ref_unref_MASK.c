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
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void) {
        sd_bus_message *m = NULL;
        sd_bus *bus = NULL;
        int r;

        /* This test will result in a memory leak in <= v240, but not on v241. Hence to be really useful it
         * should be run through a leak tracker such as valgrind. */

        r = FUNC4(&bus);
        if (r < 0)
                return FUNC1("Failed to connect to bus");

        /* Create a message and enqueue it (this shouldn't send it though as the connection setup is not complete yet) */
        FUNC0(FUNC2(bus, &m, "foo.bar", "/foo", "quux.quux", "waldo") >= 0);
        FUNC0(FUNC5(bus, m, NULL) >= 0);

        /* Let's now unref the message first and the bus second. */
        m = FUNC3(m);
        bus = FUNC6(bus);

        /* We should have a memory leak now on <= v240. Let's do this again, but destroy in the opposite
         * order. On v240 that too should be a leak. */

        r = FUNC4(&bus);
        if (r < 0)
                return FUNC1("Failed to connect to bus");

        FUNC0(FUNC2(bus, &m, "foo.bar", "/foo", "quux.quux", "waldo") >= 0);
        FUNC0(FUNC5(bus, m, NULL) >= 0);

        /* Let's now unref things in the opposite order */
        bus = FUNC6(bus);
        m = FUNC3(m);

        return 0;
}