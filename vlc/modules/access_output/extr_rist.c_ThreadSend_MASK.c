#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  scalar_t__ uint64_t ;
typedef  void* uint32_t ;
typedef  int uint16_t ;
struct rtp_pkt {TYPE_3__* buffer; void* rtp_ts; } ;
struct rist_flow {int reset; int wi; int last_out; int /*<<< orphan*/  bytes_count; int /*<<< orphan*/  packets_count; void* hi_timestamp; struct rtp_pkt* buffer; int /*<<< orphan*/  fd_out; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_access_out_t ;
struct TYPE_10__ {scalar_t__ i_last_stat; scalar_t__ i_retransmit_packets; scalar_t__ i_total_packets; int /*<<< orphan*/  lock; int /*<<< orphan*/  fd_lock; int /*<<< orphan*/  p_fifo; struct rist_flow* flow; scalar_t__ i_ticks_caching; } ;
typedef  TYPE_2__ sout_access_out_sys_t ;
struct TYPE_11__ {scalar_t__ i_buffer; int /*<<< orphan*/  p_buffer; scalar_t__ i_dts; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  STATS_INTERVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

__attribute__((used)) static void* FUNC16( void *data )
{
    sout_access_out_t *p_access = data;
    sout_access_out_sys_t *p_sys = p_access->p_sys;
    vlc_tick_t i_caching = p_sys->i_ticks_caching;
    struct rist_flow *flow = p_sys->flow;

    for (;;)
    {
        ssize_t len = 0;
        uint16_t seq = 0;
        uint32_t pkt_ts = 0;
        block_t *out = FUNC1( p_sys->p_fifo );

        FUNC3( out );
        FUNC15 (out->i_dts + i_caching);
        FUNC9();

        len = out->i_buffer;
        int canc = FUNC13();

        seq = FUNC7(out->p_buffer);
        pkt_ts = FUNC8(out->p_buffer);

        FUNC10( &p_sys->fd_lock );
#ifdef TEST_PACKET_LOSS
#   warning COMPILED WITH SELF INFLICTED PACKET LOSS
        if ((seq % 14) == 0) {
            /*msg_Err(p_access, "Dropped packet with seq number %d ...", seq);*/
        }
        else
        {
            if (rist_Write(flow->fd_out, out->p_buffer, len) != len) {
                msg_Err(p_access, "Error sending data packet after 2 tries ...");
            }
        }
#else
        if (FUNC6(flow->fd_out, out->p_buffer, len) != len) {
            FUNC4(p_access, "Error sending data packet after 2 tries ...");
        }
#endif
        FUNC11( &p_sys->fd_lock );

        /* Insert Into Queue */
        FUNC10( &p_sys->lock );
        /* Always replace the existing one with the new one */
        struct rtp_pkt *pkt;
        pkt = &(flow->buffer[seq]);
        if (pkt->buffer)
        {
            FUNC2(pkt->buffer);
            pkt->buffer = NULL;
        }
        pkt->rtp_ts = pkt_ts;
        pkt->buffer = out;

        if (flow->reset == 1)
        {
            FUNC5(p_access, "Traffic detected");
            /* First packet in the queue */
            flow->reset = 0;
        }
        flow->wi = seq;
        flow->hi_timestamp = pkt_ts;
        /* Stats for RTCP feedback packets */
        flow->packets_count++;
        flow->bytes_count += len;
        flow->last_out = seq;
        FUNC11( &p_sys->lock );

        /* We print out the stats once per second */
        uint64_t now = FUNC14();
        uint64_t interval = (now - p_sys->i_last_stat);
        if ( interval > FUNC0(STATS_INTERVAL) )
        {
            if (p_sys->i_retransmit_packets > 0)
            {
                float quality = 100;
                if (p_sys->i_total_packets > 0)
                    quality = (float)100 - (float)100*(float)(p_sys->i_retransmit_packets)
                        /(float)p_sys->i_total_packets;
                FUNC5(p_access, "STATS: Total %u, Retransmitted %u, Link Quality %.2f%%", 
                    p_sys->i_total_packets, p_sys->i_retransmit_packets, quality);
            }
            p_sys->i_last_stat = now;
            p_sys->i_retransmit_packets = 0;
            p_sys->i_total_packets = 0;
        }
        p_sys->i_total_packets++;

        FUNC12 (canc);
    }
    return NULL;
}