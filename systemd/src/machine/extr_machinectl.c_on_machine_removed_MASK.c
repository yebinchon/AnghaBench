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
typedef  int /*<<< orphan*/ * sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  PTYForward ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(sd_bus_message *m, void *userdata, sd_bus_error *ret_error) {
        PTYForward ** forward = (PTYForward**) userdata;
        int r;

        FUNC0(m);
        FUNC0(forward);

        if (*forward) {
                /* If the forwarder is already initialized, tell it to
                 * exit on the next vhangup(), so that we still flush
                 * out what might be queued and exit then. */

                r = FUNC2(*forward, false);
                if (r >= 0)
                        return 0;

                FUNC1(r, "Failed to set ignore_vhangup flag: %m");
        }

        /* On error, or when the forwarder is not initialized yet, quit immediately */
        FUNC5(FUNC3(FUNC4(m)), EXIT_FAILURE);
        return 0;
}