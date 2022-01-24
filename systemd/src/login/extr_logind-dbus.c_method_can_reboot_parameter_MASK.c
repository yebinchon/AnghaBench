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
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int FUNC4(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        int r;

        FUNC0(message);
        FUNC0(m);

        r = FUNC1();
        if (r < 0)
                return r;
        if (r > 0) /* Inside containers, specifying a reboot parameter, doesn't make much sense */
                return FUNC3(message, "s", "na");

        return FUNC2(
                        message,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.login1.set-reboot-parameter",
                        NULL,
                        UID_INVALID,
                        error);
}