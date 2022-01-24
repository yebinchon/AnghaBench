#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct pollfd {int fd; int /*<<< orphan*/  events; } ;
struct TYPE_19__ {int msg_iovlen; struct iovec* msg_iov; } ;
struct mmsghdr {scalar_t__ msg_len; TYPE_1__ msg_hdr; } ;
struct iovec {int /*<<< orphan*/ * iov_base; int /*<<< orphan*/  iov_len; } ;
struct TYPE_20__ {TYPE_4__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  msgs ;
struct TYPE_21__ {scalar_t__ i_buffer; int /*<<< orphan*/ * p_buffer; } ;
typedef  TYPE_3__ block_t ;
struct TYPE_22__ {int udp_sock; scalar_t__ keepalive_interval; int woken; int /*<<< orphan*/  fifo; int /*<<< orphan*/  session_id; int /*<<< orphan*/  cseq; int /*<<< orphan*/  control; int /*<<< orphan*/  tcp_sock; } ;
typedef  TYPE_4__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_WAITFORONE ; 
 int /*<<< orphan*/  POLLIN ; 
 scalar_t__ RECV_TIMEOUT ; 
 scalar_t__ RTP_HEADER_SIZE ; 
 int /*<<< orphan*/  RTSP_RECEIVE_BUFFER ; 
 scalar_t__ RTSP_RESULT_OK ; 
 int VLEN ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmsghdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct pollfd*,int,int) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,struct mmsghdr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__**) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  (*) (TYPE_3__**),TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 () ; 

__attribute__((used)) static void *FUNC23(void *data) {
    stream_t *access = data;
    access_sys_t *sys = access->p_sys;
    int sock = sys->udp_sock;
    vlc_tick_t last_recv = FUNC22();
    ssize_t len;
    vlc_tick_t next_keepalive = FUNC22() + FUNC21(sys->keepalive_interval);
#ifdef HAVE_RECVMMSG
    struct mmsghdr msgs[VLEN];
    struct iovec iovecs[VLEN];
    block_t *input_blocks[VLEN];
    int retval;

    for (size_t i = 0; i < VLEN; i++) {
        memset(&msgs[i], 0, sizeof (msgs[i]));
        msgs[i].msg_hdr.msg_iov = &iovecs[i];
        msgs[i].msg_hdr.msg_iovlen = 1;
        iovecs[i].iov_base = NULL;
        iovecs[i].iov_len = RTSP_RECEIVE_BUFFER;
        input_blocks[i] = NULL;
    }
#else
    struct pollfd ufd;

    ufd.fd = sock;
    ufd.events = POLLIN;
#endif

    while (last_recv > FUNC22() - RECV_TIMEOUT) {
#ifdef HAVE_RECVMMSG
        for (size_t i = 0; i < VLEN; i++) {
            if (input_blocks[i] != NULL)
                continue;

            input_blocks[i] = block_Alloc(RTSP_RECEIVE_BUFFER);
            if (unlikely(input_blocks[i] == NULL))
                break;

            iovecs[i].iov_base = input_blocks[i]->p_buffer;
        }

        vlc_cleanup_push(satip_cleanup_blocks, input_blocks);
        retval = recvmmsg(sock, msgs, VLEN, MSG_WAITFORONE, NULL);
        vlc_cleanup_pop();
        if (retval == -1)
            continue;

        last_recv = vlc_tick_now();
        for (int i = 0; i < retval; ++i) {
            block_t *block = input_blocks[i];

            len = msgs[i].msg_len;
            if (check_rtp_seq(access, block))
                continue;

            block->p_buffer += RTP_HEADER_SIZE;
            block->i_buffer = len - RTP_HEADER_SIZE;
            block_FifoPut(sys->fifo, block);
            input_blocks[i] = NULL;
        }
#else
        if (FUNC10(&ufd, 1, 20) == -1)
            continue;

        block_t *block = FUNC0(RTSP_RECEIVE_BUFFER);
        if (block == NULL) {
            FUNC7(access, "Failed to allocate memory for input buffer");
            break;
        }

        FUNC3(block);
        len = FUNC11(sock, block->p_buffer, RTSP_RECEIVE_BUFFER, 0);
        FUNC16();

        if (len < RTP_HEADER_SIZE) {
            FUNC2(block);
            continue;
        }

        if (FUNC4(access, block)) {
            FUNC2(block);
            continue;
        }
        last_recv = FUNC22();
        block->p_buffer += RTP_HEADER_SIZE;
        block->i_buffer = len - RTP_HEADER_SIZE;
        FUNC1(sys->fifo, block);
#endif

        if (sys->keepalive_interval > 0 && FUNC22() > next_keepalive) {
            FUNC9(access, sys->tcp_sock,
                    "OPTIONS %s RTSP/1.0\r\n"
                    "CSeq: %d\r\n"
                    "Session: %s\r\n\r\n",
                    sys->control, sys->cseq++, sys->session_id);
            if (FUNC13(access, NULL) != RTSP_RESULT_OK)
                FUNC8(access, "Failed to keepalive RTSP session");

            next_keepalive = FUNC22() + FUNC21(sys->keepalive_interval);
        }
    }

#ifdef HAVE_RECVMMSG
    satip_cleanup_blocks(input_blocks);
#endif
    FUNC6(access, "timed out waiting for data...");
    FUNC18(sys->fifo);
    sys->woken = true;
    FUNC19(sys->fifo);
    FUNC20(sys->fifo);

    return NULL;
}