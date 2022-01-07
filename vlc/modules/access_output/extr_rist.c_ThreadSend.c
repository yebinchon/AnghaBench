
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef scalar_t__ uint64_t ;
typedef void* uint32_t ;
typedef int uint16_t ;
struct rtp_pkt {TYPE_3__* buffer; void* rtp_ts; } ;
struct rist_flow {int reset; int wi; int last_out; int bytes_count; int packets_count; void* hi_timestamp; struct rtp_pkt* buffer; int fd_out; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_10__ {scalar_t__ i_last_stat; scalar_t__ i_retransmit_packets; scalar_t__ i_total_packets; int lock; int fd_lock; int p_fifo; struct rist_flow* flow; scalar_t__ i_ticks_caching; } ;
typedef TYPE_2__ sout_access_out_sys_t ;
struct TYPE_11__ {scalar_t__ i_buffer; int p_buffer; scalar_t__ i_dts; } ;
typedef TYPE_3__ block_t ;


 int STATS_INTERVAL ;
 scalar_t__ VLC_TICK_FROM_MS (int ) ;
 TYPE_3__* block_FifoGet (int ) ;
 int block_Release (TYPE_3__*) ;
 int block_cleanup_push (TYPE_3__*) ;
 int msg_Err (TYPE_1__*,char*) ;
 int msg_Info (TYPE_1__*,char*,...) ;
 scalar_t__ rist_Write (int ,int ,scalar_t__) ;
 int rtp_get_seqnum (int ) ;
 void* rtp_get_timestamp (int ) ;
 int vlc_cleanup_pop () ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 scalar_t__ vlc_tick_now () ;
 int vlc_tick_wait (scalar_t__) ;

__attribute__((used)) static void* ThreadSend( void *data )
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
        block_t *out = block_FifoGet( p_sys->p_fifo );

        block_cleanup_push( out );
        vlc_tick_wait (out->i_dts + i_caching);
        vlc_cleanup_pop();

        len = out->i_buffer;
        int canc = vlc_savecancel();

        seq = rtp_get_seqnum(out->p_buffer);
        pkt_ts = rtp_get_timestamp(out->p_buffer);

        vlc_mutex_lock( &p_sys->fd_lock );
        if (rist_Write(flow->fd_out, out->p_buffer, len) != len) {
            msg_Err(p_access, "Error sending data packet after 2 tries ...");
        }

        vlc_mutex_unlock( &p_sys->fd_lock );


        vlc_mutex_lock( &p_sys->lock );

        struct rtp_pkt *pkt;
        pkt = &(flow->buffer[seq]);
        if (pkt->buffer)
        {
            block_Release(pkt->buffer);
            pkt->buffer = ((void*)0);
        }
        pkt->rtp_ts = pkt_ts;
        pkt->buffer = out;

        if (flow->reset == 1)
        {
            msg_Info(p_access, "Traffic detected");

            flow->reset = 0;
        }
        flow->wi = seq;
        flow->hi_timestamp = pkt_ts;

        flow->packets_count++;
        flow->bytes_count += len;
        flow->last_out = seq;
        vlc_mutex_unlock( &p_sys->lock );


        uint64_t now = vlc_tick_now();
        uint64_t interval = (now - p_sys->i_last_stat);
        if ( interval > VLC_TICK_FROM_MS(STATS_INTERVAL) )
        {
            if (p_sys->i_retransmit_packets > 0)
            {
                float quality = 100;
                if (p_sys->i_total_packets > 0)
                    quality = (float)100 - (float)100*(float)(p_sys->i_retransmit_packets)
                        /(float)p_sys->i_total_packets;
                msg_Info(p_access, "STATS: Total %u, Retransmitted %u, Link Quality %.2f%%",
                    p_sys->i_total_packets, p_sys->i_retransmit_packets, quality);
            }
            p_sys->i_last_stat = now;
            p_sys->i_retransmit_packets = 0;
            p_sys->i_total_packets = 0;
        }
        p_sys->i_total_packets++;

        vlc_restorecancel (canc);
    }
    return ((void*)0);
}
