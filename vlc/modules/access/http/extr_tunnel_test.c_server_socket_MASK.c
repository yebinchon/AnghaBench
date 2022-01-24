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
struct sockaddr_in6 {int sin6_len; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int SOCK_CLOEXEC ; 
 int SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  in6addr_loopback ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(unsigned *port)
{
    int fd = FUNC3(PF_INET6, SOCK_STREAM|SOCK_CLOEXEC, IPPROTO_TCP);
    if (fd == -1)
        return -1;

    struct sockaddr_in6 addr = {
        .sin6_family = AF_INET6,
#ifdef HAVE_SA_LEN
        .sin6_len = sizeof (addr),
#endif
        .sin6_addr = in6addr_loopback,
    };
    socklen_t addrlen = sizeof (addr);

    if (FUNC0(fd, (struct sockaddr *)&addr, addrlen)
     || FUNC1(fd, (struct sockaddr *)&addr, &addrlen))
    {
        FUNC4(fd);
        return -1;
    }

    *port = FUNC2(addr.sin6_port);
    return fd;
}