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
 char const* DEFAULT_SYSTEM_BUS_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC2 (char*) ; 

int FUNC3(sd_bus *b) {
        const char *e;
        FUNC0(b);

        e = FUNC2("DBUS_SYSTEM_BUS_ADDRESS");
        if (e)
                return FUNC1(b, e);

        return FUNC1(b, DEFAULT_SYSTEM_BUS_ADDRESS);
}