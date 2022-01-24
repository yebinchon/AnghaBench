#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  bus; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,char*,char**) ; 
 char** FUNC3 (char const*) ; 

int FUNC4(Manager *manager, const char *property, ...) {
        FUNC0(manager);

        char **l = FUNC3(property);

        int r = FUNC2(
                        manager->bus,
                        "/org/freedesktop/resolve1",
                        "org.freedesktop.resolve1.Manager",
                        l);
        if (r < 0)
                FUNC1(r, "Failed to emit notification about changed property %s: %m", property);
        return r;
}