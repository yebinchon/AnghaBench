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
typedef  int /*<<< orphan*/  UnitWriteFlags ;
typedef  int /*<<< orphan*/  Unit ;

/* Variables and functions */
 int /*<<< orphan*/  F_DUPFD_CLOEXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int*) ; 

__attribute__((used)) static int FUNC5(
                Unit *u,
                const char *name,
                int *p,
                bool *b,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        int fd, r;

        FUNC1(p);
        FUNC1(b);

        r = FUNC4(message, "h", &fd);
        if (r < 0)
                return r;

        if (!FUNC0(flags)) {
                int copy;

                copy = FUNC3(fd, F_DUPFD_CLOEXEC, 3);
                if (copy < 0)
                        return -errno;

                FUNC2(*p);
                *p = copy;
                *b = true;
        }

        return 1;
}