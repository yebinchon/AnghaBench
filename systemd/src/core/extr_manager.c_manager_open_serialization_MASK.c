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
typedef  int /*<<< orphan*/  Manager ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(Manager *m, FILE **_f) {
        int fd;
        FILE *f;

        FUNC0(_f);

        fd = FUNC2("systemd-state");
        if (fd < 0)
                return fd;

        f = FUNC1(fd, "w+");
        if (!f) {
                FUNC3(fd);
                return -errno;
        }

        *_f = f;
        return 0;
}