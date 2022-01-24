#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pollfd {int fd; scalar_t__ revents; int /*<<< orphan*/  events; } ;
struct dvb_frontend_event {int /*<<< orphan*/  status; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int demux; int frontend; int /*<<< orphan*/  obj; int /*<<< orphan*/ * cam; } ;
typedef  TYPE_1__ dvb_device_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ EOVERFLOW ; 
 int /*<<< orphan*/  FE_GET_EVENT ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  POLLPRI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct dvb_frontend_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int,void*,size_t) ; 
 int FUNC5 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

ssize_t FUNC7 (dvb_device_t *d, void *buf, size_t len, int ms)
{
    struct pollfd ufd[2];
    int n;

    if (d->cam != NULL)
        FUNC1 (d->cam);

    ufd[0].fd = d->demux;
    ufd[0].events = POLLIN;
    if (d->frontend != -1)
    {
        ufd[1].fd = d->frontend;
        ufd[1].events = POLLPRI;
        n = 2;
    }
    else
        n = 1;

    errno = 0;
    n = FUNC5 (ufd, n, ms);
    if (n == 0)
        errno = EAGAIN;
    if (n <= 0)
        return -1;

    if (d->frontend != -1 && ufd[1].revents)
    {
        struct dvb_frontend_event ev;

        if (FUNC2 (d->frontend, FE_GET_EVENT, &ev) < 0)
        {
            if (errno == EOVERFLOW)
            {
                FUNC3 (d->obj, "cannot dequeue events fast enough!");
                return -1;
            }
            FUNC3 (d->obj, "cannot dequeue frontend event: %s",
                     FUNC6(errno));
            return 0;
        }

        FUNC0(d->obj, ev.status);
    }

    if (ufd[0].revents)
    {
        ssize_t val = FUNC4 (d->demux, buf, len);
        if (val == -1 && (errno != EAGAIN && errno != EINTR))
        {
            if (errno == EOVERFLOW)
            {
                FUNC3 (d->obj, "cannot demux data fast enough!");
                return -1;
            }
            FUNC3 (d->obj, "cannot demux: %s", FUNC6(errno));
            return 0;
        }
        return val;
    }

    return -1;
}