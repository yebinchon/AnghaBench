#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct pollfd {int fd; int events; int revents; } ;
typedef  int ssize_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_access_out_t ;
struct TYPE_8__ {scalar_t__ last_rtcp_tx; TYPE_5__* flow; scalar_t__ b_ismulticast; } ;
typedef  TYPE_2__ sout_access_out_sys_t ;
struct TYPE_9__ {int fd_rtcp; int fd_rtcp_m; } ;

/* Variables and functions */
 int POLLIN ; 
 int RTCP_INTERVAL ; 
 int RTP_PKT_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,int) ; 
 int FUNC3 (struct pollfd*,int,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 () ; 
 scalar_t__ FUNC10 () ; 

__attribute__((used)) static void *FUNC11(void *data)
{
    sout_access_out_t *p_access = data;
    sout_access_out_sys_t *p_sys = p_access->p_sys;
    uint64_t now;
    uint8_t pkt[RTP_PKT_SIZE];
    struct pollfd pfd[2];
    int ret;
    ssize_t r;

    int poll_sockets = 1;
    pfd[0].fd = p_sys->flow->fd_rtcp;
    pfd[0].events = POLLIN;
    if (p_sys->b_ismulticast)
    {
        pfd[1].fd = p_sys->flow->fd_rtcp_m;
        pfd[1].events = POLLIN;
        poll_sockets++;
    }

    for (;;) {
        ret = FUNC3(pfd, poll_sockets, RTCP_INTERVAL >> 1);
        int canc = FUNC9();
        if (ret > 0)
        {
            if (pfd[0].revents & POLLIN)
            {
                r = FUNC4(p_sys->flow->fd_rtcp, pkt, RTP_PKT_SIZE);
                if (r == RTP_PKT_SIZE) {
                    FUNC2(p_access, "Rist RTCP messsage is too big (%zd bytes) and was probably " \
                        "cut, please keep it under %d bytes", r, RTP_PKT_SIZE);
                }
                if (FUNC7(r == -1)) {
                    FUNC2(p_access, "socket %d error: %s\n", p_sys->flow->fd_rtcp, 
                        FUNC1(errno));
                }
                else {
                    FUNC5(p_access, p_sys->flow, pkt, r);
                }
            }
            if (p_sys->b_ismulticast && (pfd[1].revents & POLLIN))
            {
                r = FUNC4(p_sys->flow->fd_rtcp_m, pkt, RTP_PKT_SIZE);
                if (r == RTP_PKT_SIZE) {
                    FUNC2(p_access, "Rist RTCP messsage is too big (%zd bytes) and was " \
                        "probably cut, please keep it under %d bytes", r, RTP_PKT_SIZE);
                }
                if (FUNC7(r == -1)) {
                    FUNC2(p_access, "mcast socket %d error: %s\n", p_sys->flow->fd_rtcp_m,
                        FUNC1(errno));
                }
                else {
                    FUNC5(p_access, p_sys->flow, pkt, r);
                }
            }
        }

        /* And, in any case: */
        now = FUNC10();
        if ((now - p_sys->last_rtcp_tx) > FUNC0(RTCP_INTERVAL))
        {
            FUNC6(p_access);
            p_sys->last_rtcp_tx = now;
        }
        FUNC8 (canc);
    }

    return NULL;
}