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
struct TYPE_4__ {scalar_t__ tmp; } ;
typedef  TYPE_1__ RequestMeta ;

/* Variables and functions */
 int O_CLOEXEC ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int errno ; 
 scalar_t__ FUNC1 (int,char*) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(RequestMeta *m) {
        FUNC0(m);

        if (m->tmp)
                FUNC3(m->tmp);
        else {
                int fd;

                fd = FUNC2("/tmp", O_RDWR|O_CLOEXEC);
                if (fd < 0)
                        return fd;

                m->tmp = FUNC1(fd, "w+");
                if (!m->tmp) {
                        FUNC4(fd);
                        return -errno;
                }
        }

        return 0;
}