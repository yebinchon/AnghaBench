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
typedef  int /*<<< orphan*/  vlc_tls_t ;
typedef  int /*<<< orphan*/  val ;
struct pollfd {int fd; int /*<<< orphan*/  events; } ;
typedef  int socklen_t ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  POLLOUT ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int errno ; 
 scalar_t__ FUNC0 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct pollfd*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(vlc_tls_t *tls)
{
    const int fd = FUNC3(tls);
    struct pollfd ufd;

    ufd.fd = fd;
    ufd.events = POLLOUT;

    do
    {
        if (FUNC1())
        {
            errno = EINTR;
            return -1;
        }
    }
    while (FUNC2(&ufd, 1, -1) <= 0);

    int val;
    socklen_t len = sizeof (val);

    if (FUNC0(fd, SOL_SOCKET, SO_ERROR, &val, &len))
        return -1;

    if (val != 0)
    {
        errno = val;
        return -1;
    }
    return 0;
}