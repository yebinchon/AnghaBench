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
struct pollfd {int fd; int /*<<< orphan*/  events; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 int FUNC0 (int,struct sockaddr*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct pollfd*,int,int) ; 

int FUNC2(int fd, struct sockaddr *addr, socklen_t *addrlen,
                  bool blocking)
{
    struct pollfd ufd;

    ufd.fd = fd;
    ufd.events = POLLIN;

    if (FUNC1(&ufd, 1, -1) < 0)
        return -1;

    return FUNC0(fd, addr, addrlen, blocking);
}