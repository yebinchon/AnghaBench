#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct pollfd {int fd; int revents; int /*<<< orphan*/  events; } ;
struct msghdr {int msg_iovlen; int msg_flags; struct iovec* msg_iov; } ;
struct iovec {int iov_len; int /*<<< orphan*/  iov_base; } ;
typedef  int ssize_t ;
struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_12__ {int fd; int /*<<< orphan*/  session; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_13__ {int i_buffer; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_FLAG_CORRUPTED ; 
 int DEFAULT_MRU ; 
 int MSG_TRUNC ; 
 int POLLHUP ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 TYPE_3__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,struct msghdr*,int const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void *FUNC13 (void *opaque)
{
    demux_t *demux = opaque;
    demux_sys_t *sys = demux->p_sys;
    vlc_tick_t deadline = VLC_TICK_INVALID;
    int rtp_fd = sys->fd;
#ifdef __linux__
    const int trunc_flag = MSG_TRUNC;
#else
    const int trunc_flag = 0;
#endif

    struct iovec iov =
    {
        .iov_len = DEFAULT_MRU,
    };
    struct msghdr msg =
    {
        .msg_iov = &iov,
        .msg_iovlen = 1,
    };

    struct pollfd ufd[1];
    ufd[0].fd = rtp_fd;
    ufd[0].events = POLLIN;

    for (;;)
    {
        int n = FUNC4 (ufd, 1, FUNC8 (deadline));
        if (n == -1)
            continue;

        int canc = FUNC11 ();
        if (n == 0)
            goto dequeue;

        if (ufd[0].revents)
        {
            n--;
            if (FUNC9(ufd[0].revents & POLLHUP))
                break; /* RTP socket dead (DCCP only) */

            block_t *block = FUNC0 (iov.iov_len);
            if (FUNC9(block == NULL))
            {
                if (iov.iov_len == DEFAULT_MRU)
                    break; /* we are totallly screwed */
                iov.iov_len = DEFAULT_MRU;
                continue; /* retry with shrunk MRU */
            }

            iov.iov_base = block->p_buffer;
            msg.msg_flags = trunc_flag;

            ssize_t len = FUNC5 (rtp_fd, &msg, trunc_flag);
            if (len != -1)
            {
                if (msg.msg_flags & trunc_flag)
                {
                    FUNC2(demux, "%zd bytes packet truncated (MRU was %zu)",
                            len, iov.iov_len);
                    block->i_flags |= BLOCK_FLAG_CORRUPTED;
                    iov.iov_len = len;
                }
                else
                    block->i_buffer = len;

                FUNC7 (demux, block);
            }
            else
            {
                FUNC3 (demux, "RTP network error: %s",
                          FUNC12(errno));
                FUNC1 (block);
            }
        }

    dequeue:
        if (!FUNC6 (demux, sys->session, &deadline))
            deadline = VLC_TICK_INVALID;
        FUNC10 (canc);
    }
    return NULL;
}