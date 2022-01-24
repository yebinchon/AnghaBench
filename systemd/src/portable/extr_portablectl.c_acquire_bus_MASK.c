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
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  arg_ask_password ; 
 int /*<<< orphan*/  arg_host ; 
 int /*<<< orphan*/  arg_transport ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(sd_bus **bus) {
        int r;

        FUNC0(bus);

        if (*bus)
                return 0;

        r = FUNC1(arg_transport, arg_host, false, bus);
        if (r < 0)
                return FUNC2(r, "Failed to connect to bus: %m");

        (void) FUNC3(*bus, arg_ask_password);

        return 0;
}