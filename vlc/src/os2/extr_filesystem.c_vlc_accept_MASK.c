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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int FUNC0 (int,struct sockaddr*,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 

int FUNC2 (int lfd, struct sockaddr *addr, socklen_t *alen, bool nonblock)
{
    do
    {
        int fd = FUNC0 (lfd, addr, alen);
        if (fd != -1)
        {
            FUNC1 (fd, F_SETFD, FD_CLOEXEC);
            if (nonblock)
                FUNC1 (fd, F_SETFL, FUNC1 (fd, F_GETFL, 0) | O_NONBLOCK);
            return fd;
        }
    }
    while (errno == EINTR);

    return -1;
}