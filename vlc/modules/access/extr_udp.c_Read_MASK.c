#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
struct msghdr {int /*<<< orphan*/  msg_iovlen; struct iovec* msg_iov; } ;
struct iovec {void* iov_base; size_t iov_len; } ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  size_t ssize_t ;
struct TYPE_6__ {size_t length; size_t offset; void* buf; int /*<<< orphan*/  fd; int /*<<< orphan*/  timeout; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iovec*) ; 
 size_t MRU ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,struct msghdr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct pollfd*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(stream_t *access, void *buf, size_t len)
{
    access_sys_t *sys = access->p_sys;

    if (sys->length > 0) {
        if (len > sys->length)
            len = sys->length;

        FUNC1(buf, sys->offset, len);
        sys->offset += len;
        sys->length -= len;
        return len;
    }

    struct pollfd ufd[1];

    ufd[0].fd = sys->fd;
    ufd[0].events = POLLIN;

    switch (FUNC5(ufd, 1, sys->timeout)) {
        case 0:
            FUNC2(access, "receive time-out");
            return 0;
        case -1:
            return -1;
    }

    struct iovec iov[] = {
        { .iov_base = buf,      .iov_len = len, },
        { .iov_base = sys->buf, .iov_len = MRU, },
    };
    struct msghdr msg = {
        .msg_iov = iov,
        .msg_iovlen = FUNC0(iov),
    };
    ssize_t val = FUNC3(sys->fd, &msg, 0);

    if (val <= 0) /* empty (0 bytes) payload does *not* mean EOF here */
        return -1;

    if (FUNC4((size_t)val > len)) {
        sys->offset = sys->buf;
        sys->length = val - len;
        val = len;
    }

    return val;
}