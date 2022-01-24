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
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  watchdog_device ; 
 int /*<<< orphan*/  watchdog_fd ; 

int FUNC2(char *path) {
        int r;

        r = FUNC0(&watchdog_device, path);
        if (r < 0)
                return r;

        if (r > 0) /* watchdog_device changed */
                watchdog_fd = FUNC1(watchdog_fd);

        return r;
}