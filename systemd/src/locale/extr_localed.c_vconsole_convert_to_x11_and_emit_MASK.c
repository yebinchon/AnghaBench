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
typedef  int /*<<< orphan*/  Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(Context *c, sd_bus_message *m) {
        int r;

        FUNC0(m);

        r = FUNC5(c, m);
        if (r < 0)
                return r;

        r = FUNC4(c);
        if (r <= 0)
                return r;

        /* modified */
        r = FUNC6(c);
        if (r < 0)
                return FUNC1(r, "Failed to write X11 keyboard layout: %m");

        FUNC2(FUNC3(m),
                                       "/org/freedesktop/locale1",
                                       "org.freedesktop.locale1",
                                       "X11Layout", "X11Model", "X11Variant", "X11Options", NULL);

        return 1;
}