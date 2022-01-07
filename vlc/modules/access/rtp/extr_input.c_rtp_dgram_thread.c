
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct pollfd {int fd; int revents; int events; } ;
struct msghdr {int msg_iovlen; int msg_flags; struct iovec* msg_iov; } ;
struct iovec {int iov_len; int iov_base; } ;
typedef int ssize_t ;
struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_12__ {int fd; int session; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_13__ {int i_buffer; int i_flags; int p_buffer; } ;
typedef TYPE_3__ block_t ;


 int BLOCK_FLAG_CORRUPTED ;
 int DEFAULT_MRU ;
 int MSG_TRUNC ;
 int POLLHUP ;
 int POLLIN ;
 int VLC_TICK_INVALID ;
 TYPE_3__* block_Alloc (int) ;
 int block_Release (TYPE_3__*) ;
 int errno ;
 int msg_Err (TYPE_1__*,char*,int,int) ;
 int msg_Warn (TYPE_1__*,char*,int ) ;
 int poll (struct pollfd*,int,int ) ;
 int recvmsg (int,struct msghdr*,int const) ;
 int rtp_dequeue (TYPE_1__*,int ,int *) ;
 int rtp_process (TYPE_1__*,TYPE_3__*) ;
 int rtp_timeout (int ) ;
 scalar_t__ unlikely (int) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 int vlc_strerror_c (int ) ;

void *rtp_dgram_thread (void *opaque)
{
    demux_t *demux = opaque;
    demux_sys_t *sys = demux->p_sys;
    vlc_tick_t deadline = VLC_TICK_INVALID;
    int rtp_fd = sys->fd;

    const int trunc_flag = MSG_TRUNC;




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
        int n = poll (ufd, 1, rtp_timeout (deadline));
        if (n == -1)
            continue;

        int canc = vlc_savecancel ();
        if (n == 0)
            goto dequeue;

        if (ufd[0].revents)
        {
            n--;
            if (unlikely(ufd[0].revents & POLLHUP))
                break;

            block_t *block = block_Alloc (iov.iov_len);
            if (unlikely(block == ((void*)0)))
            {
                if (iov.iov_len == DEFAULT_MRU)
                    break;
                iov.iov_len = DEFAULT_MRU;
                continue;
            }

            iov.iov_base = block->p_buffer;
            msg.msg_flags = trunc_flag;

            ssize_t len = recvmsg (rtp_fd, &msg, trunc_flag);
            if (len != -1)
            {
                if (msg.msg_flags & trunc_flag)
                {
                    msg_Err(demux, "%zd bytes packet truncated (MRU was %zu)",
                            len, iov.iov_len);
                    block->i_flags |= BLOCK_FLAG_CORRUPTED;
                    iov.iov_len = len;
                }
                else
                    block->i_buffer = len;

                rtp_process (demux, block);
            }
            else
            {
                msg_Warn (demux, "RTP network error: %s",
                          vlc_strerror_c(errno));
                block_Release (block);
            }
        }

    dequeue:
        if (!rtp_dequeue (demux, sys->session, &deadline))
            deadline = VLC_TICK_INVALID;
        vlc_restorecancel (canc);
    }
    return ((void*)0);
}
