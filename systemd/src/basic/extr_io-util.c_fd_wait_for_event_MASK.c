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
typedef  int /*<<< orphan*/  usec_t ;
struct timespec {int dummy; } ;
struct pollfd {int fd; int events; int revents; } ;

/* Variables and functions */
 int /*<<< orphan*/  USEC_INFINITY ; 
 int errno ; 
 int FUNC0 (struct pollfd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct timespec*,int /*<<< orphan*/ ) ; 

int FUNC2(int fd, int event, usec_t t) {

        struct pollfd pollfd = {
                .fd = fd,
                .events = event,
        };

        struct timespec ts;
        int r;

        r = FUNC0(&pollfd, 1, t == USEC_INFINITY ? NULL : FUNC1(&ts, t), NULL);
        if (r < 0)
                return -errno;
        if (r == 0)
                return 0;

        return pollfd.revents;
}