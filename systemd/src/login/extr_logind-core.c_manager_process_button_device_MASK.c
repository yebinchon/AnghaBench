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
typedef  int /*<<< orphan*/  sd_device ;
struct TYPE_5__ {int /*<<< orphan*/  buttons; } ;
typedef  TYPE_1__ Manager ;
typedef  int /*<<< orphan*/  Button ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_ACTION_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int FUNC7 (TYPE_1__*,char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,char const**) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const**) ; 

int FUNC10(Manager *m, sd_device *d) {
        const char *sysname;
        Button *b;
        int r;

        FUNC0(m);

        r = FUNC9(d, &sysname);
        if (r < 0)
                return r;

        if (FUNC4(d, DEVICE_ACTION_REMOVE)) {

                b = FUNC5(m->buttons, sysname);
                if (!b)
                        return 0;

                FUNC1(b);

        } else {
                const char *sn;

                r = FUNC7(m, sysname, &b);
                if (r < 0)
                        return r;

                if (FUNC8(d, "ID_SEAT", &sn) < 0 || FUNC6(sn))
                        sn = "seat0";

                FUNC3(b, sn);

                r = FUNC2(b);
                if (r < 0) /* event device doesn't have any keys or switches relevant to us? (or any other error
                            * opening the device?) let's close the button again. */
                        FUNC1(b);
        }

        return 0;
}