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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 

int FUNC2(int transport_fd, int flags) {
        int fd;
        ssize_t k;

        k = FUNC1(transport_fd, NULL, 0, flags, &fd);
        if (k == 0)
                return fd;

        /* k must be negative, since receive_one_fd_iov() only returns
         * a positive value if data was received through the iov. */
        FUNC0(k < 0);
        return (int) k;
}