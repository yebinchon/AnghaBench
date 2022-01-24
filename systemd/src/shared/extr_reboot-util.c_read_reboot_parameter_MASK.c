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

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int FUNC1 (int,char*) ; 
 int FUNC2 (char*,char**) ; 

int FUNC3(char **parameter) {
        int r;

        FUNC0(parameter);

        r = FUNC2("/run/systemd/reboot-param", parameter);
        if (r < 0 && r != -ENOENT)
                return FUNC1(r, "Failed to read /run/systemd/reboot-param: %m");

        return 0;
}