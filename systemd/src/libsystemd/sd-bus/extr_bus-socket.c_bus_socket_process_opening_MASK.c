#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pollfd {int events; int revents; int /*<<< orphan*/  fd; } ;
typedef  int socklen_t ;
struct TYPE_5__ {scalar_t__ state; int last_connect_error; int /*<<< orphan*/  output_fd; } ;
typedef  TYPE_1__ sd_bus ;
typedef  int /*<<< orphan*/  error ;

/* Variables and functions */
 scalar_t__ BUS_OPENING ; 
 int ECONNREFUSED ; 
 int POLLERR ; 
 int POLLHUP ; 
 int POLLOUT ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int errno ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC4 (struct pollfd*,int,int /*<<< orphan*/ ) ; 

int FUNC5(sd_bus *b) {
        int error = 0;
        socklen_t slen = sizeof(error);
        struct pollfd p = {
                .fd = b->output_fd,
                .events = POLLOUT,
        };
        int r;

        FUNC0(b->state == BUS_OPENING);

        r = FUNC4(&p, 1, 0);
        if (r < 0)
                return -errno;

        if (!(p.revents & (POLLOUT|POLLERR|POLLHUP)))
                return 0;

        r = FUNC3(b->output_fd, SOL_SOCKET, SO_ERROR, &error, &slen);
        if (r < 0)
                b->last_connect_error = errno;
        else if (error != 0)
                b->last_connect_error = error;
        else if (p.revents & (POLLERR|POLLHUP))
                b->last_connect_error = ECONNREFUSED;
        else
                return FUNC2(b);

        return FUNC1(b);
}