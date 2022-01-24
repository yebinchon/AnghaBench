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
typedef  int /*<<< orphan*/  tv ;
struct timeval {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SNDBUF_SIZE ; 
 int SOCK_CLOEXEC ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_SNDTIMEO ; 
 int USEC_PER_MSEC ; 
 int USEC_PER_SEC ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*,int) ; 

__attribute__((used)) static int FUNC6(int type) {
        struct timeval tv;
        int fd;

        fd = FUNC4(AF_UNIX, type|SOCK_CLOEXEC, 0);
        if (fd < 0)
                return -errno;

        fd = FUNC1(fd);
        (void) FUNC0(fd, SNDBUF_SIZE);

        /* We need a blocking fd here since we'd otherwise lose messages way too early. However, let's not hang forever
         * in the unlikely case of a deadlock. */
        if (FUNC2() == 1)
                FUNC5(&tv, 10 * USEC_PER_MSEC);
        else
                FUNC5(&tv, 10 * USEC_PER_SEC);
        (void) FUNC3(fd, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv));

        return fd;
}