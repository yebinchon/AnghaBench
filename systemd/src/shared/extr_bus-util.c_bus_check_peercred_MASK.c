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
struct ucred {scalar_t__ uid; } ;
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int,struct ucred*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(sd_bus *c) {
        struct ucred ucred;
        int fd, r;

        FUNC0(c);

        fd = FUNC3(c);
        if (fd < 0)
                return fd;

        r = FUNC2(fd, &ucred);
        if (r < 0)
                return r;

        if (ucred.uid != 0 && ucred.uid != FUNC1())
                return -EPERM;

        return 1;
}