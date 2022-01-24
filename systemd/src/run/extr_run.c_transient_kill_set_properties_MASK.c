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

/* Variables and functions */
 scalar_t__ arg_send_sighup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char*,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(sd_bus_message *m) {
        int r;

        FUNC0(m);

        if (arg_send_sighup) {
                r = FUNC2(m, "(sv)", "SendSIGHUP", "b", arg_send_sighup);
                if (r < 0)
                        return FUNC1(r);
        }

        return 0;
}