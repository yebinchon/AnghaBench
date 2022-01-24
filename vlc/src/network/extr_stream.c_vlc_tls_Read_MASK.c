#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* ops; } ;
typedef  TYPE_2__ vlc_tls_t ;
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
struct iovec {char* iov_base; size_t iov_len; } ;
typedef  int ssize_t ;
struct TYPE_6__ {int (* readv ) (TYPE_2__*,struct iovec*,int) ;} ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  POLLIN ; 
 scalar_t__ errno ; 
 int FUNC0 (TYPE_2__*,struct iovec*,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

ssize_t FUNC4(vlc_tls_t *session, void *buf, size_t len, bool waitall)
{
    struct pollfd ufd;
    struct iovec iov;

    ufd.events = POLLIN;
    ufd.fd = FUNC3(session, &ufd.events);
    iov.iov_base = buf;
    iov.iov_len = len;

    for (size_t rcvd = 0;;)
    {
        if (FUNC1())
        {
            errno = EINTR;
            return -1;
        }

        ssize_t val = session->ops->readv(session, &iov, 1);
        if (val > 0)
        {
            if (!waitall)
                return val;
            iov.iov_base = (char *)iov.iov_base + val;
            iov.iov_len -= val;
            rcvd += val;
        }
        if (iov.iov_len == 0 || val == 0)
            return rcvd;
        if (val == -1)
        {
            if (FUNC1())
                return -1;
            if (errno != EINTR && errno != EAGAIN)
                return rcvd ? (ssize_t)rcvd : -1;
        }

        FUNC2(&ufd, 1, -1);
    }
}