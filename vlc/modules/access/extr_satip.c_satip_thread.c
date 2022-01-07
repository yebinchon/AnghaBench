
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct pollfd {int fd; int events; } ;
struct TYPE_19__ {int msg_iovlen; struct iovec* msg_iov; } ;
struct mmsghdr {scalar_t__ msg_len; TYPE_1__ msg_hdr; } ;
struct iovec {int * iov_base; int iov_len; } ;
struct TYPE_20__ {TYPE_4__* p_sys; } ;
typedef TYPE_2__ stream_t ;
typedef scalar_t__ ssize_t ;
typedef int msgs ;
struct TYPE_21__ {scalar_t__ i_buffer; int * p_buffer; } ;
typedef TYPE_3__ block_t ;
struct TYPE_22__ {int udp_sock; scalar_t__ keepalive_interval; int woken; int fifo; int session_id; int cseq; int control; int tcp_sock; } ;
typedef TYPE_4__ access_sys_t ;


 int MSG_WAITFORONE ;
 int POLLIN ;
 scalar_t__ RECV_TIMEOUT ;
 scalar_t__ RTP_HEADER_SIZE ;
 int RTSP_RECEIVE_BUFFER ;
 scalar_t__ RTSP_RESULT_OK ;
 int VLEN ;
 TYPE_3__* block_Alloc (int ) ;
 int block_FifoPut (int ,TYPE_3__*) ;
 int block_Release (TYPE_3__*) ;
 int block_cleanup_push (TYPE_3__*) ;
 scalar_t__ check_rtp_seq (TYPE_2__*,TYPE_3__*) ;
 int memset (struct mmsghdr*,int ,int) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int msg_Err (TYPE_2__*,char*) ;
 int msg_Warn (TYPE_2__*,char*) ;
 int net_Printf (TYPE_2__*,int ,char*,int ,int ,int ) ;
 int poll (struct pollfd*,int,int) ;
 scalar_t__ recv (int,int *,int ,int ) ;
 int recvmmsg (int,struct mmsghdr*,int,int ,int *) ;
 scalar_t__ rtsp_handle (TYPE_2__*,int *) ;
 int satip_cleanup_blocks (TYPE_3__**) ;
 scalar_t__ unlikely (int ) ;
 int vlc_cleanup_pop () ;
 int vlc_cleanup_push (int (*) (TYPE_3__**),TYPE_3__**) ;
 int vlc_fifo_Lock (int ) ;
 int vlc_fifo_Signal (int ) ;
 int vlc_fifo_Unlock (int ) ;
 scalar_t__ vlc_tick_from_sec (scalar_t__) ;
 scalar_t__ vlc_tick_now () ;

__attribute__((used)) static void *satip_thread(void *data) {
    stream_t *access = data;
    access_sys_t *sys = access->p_sys;
    int sock = sys->udp_sock;
    vlc_tick_t last_recv = vlc_tick_now();
    ssize_t len;
    vlc_tick_t next_keepalive = vlc_tick_now() + vlc_tick_from_sec(sys->keepalive_interval);
    struct pollfd ufd;

    ufd.fd = sock;
    ufd.events = POLLIN;


    while (last_recv > vlc_tick_now() - RECV_TIMEOUT) {
        if (poll(&ufd, 1, 20) == -1)
            continue;

        block_t *block = block_Alloc(RTSP_RECEIVE_BUFFER);
        if (block == ((void*)0)) {
            msg_Err(access, "Failed to allocate memory for input buffer");
            break;
        }

        block_cleanup_push(block);
        len = recv(sock, block->p_buffer, RTSP_RECEIVE_BUFFER, 0);
        vlc_cleanup_pop();

        if (len < RTP_HEADER_SIZE) {
            block_Release(block);
            continue;
        }

        if (check_rtp_seq(access, block)) {
            block_Release(block);
            continue;
        }
        last_recv = vlc_tick_now();
        block->p_buffer += RTP_HEADER_SIZE;
        block->i_buffer = len - RTP_HEADER_SIZE;
        block_FifoPut(sys->fifo, block);


        if (sys->keepalive_interval > 0 && vlc_tick_now() > next_keepalive) {
            net_Printf(access, sys->tcp_sock,
                    "OPTIONS %s RTSP/1.0\r\n"
                    "CSeq: %d\r\n"
                    "Session: %s\r\n\r\n",
                    sys->control, sys->cseq++, sys->session_id);
            if (rtsp_handle(access, ((void*)0)) != RTSP_RESULT_OK)
                msg_Warn(access, "Failed to keepalive RTSP session");

            next_keepalive = vlc_tick_now() + vlc_tick_from_sec(sys->keepalive_interval);
        }
    }




    msg_Dbg(access, "timed out waiting for data...");
    vlc_fifo_Lock(sys->fifo);
    sys->woken = 1;
    vlc_fifo_Signal(sys->fifo);
    vlc_fifo_Unlock(sys->fifo);

    return ((void*)0);
}
