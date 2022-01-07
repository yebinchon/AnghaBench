
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtp_pkt {scalar_t__ fd_in; scalar_t__ fd_nack; scalar_t__ fd_rtcp_m; scalar_t__ i_buffer; struct rtp_pkt* buffer; } ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int lock; struct rtp_pkt* flow; int * p_fifo; } ;
typedef TYPE_2__ stream_sys_t ;


 int RIST_QUEUE_SIZE ;
 int block_FifoRelease (int *) ;
 int block_Release (struct rtp_pkt*) ;
 int free (struct rtp_pkt*) ;
 scalar_t__ likely (int ) ;
 int net_Close (scalar_t__) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void Clean( stream_t *p_access )
{
    stream_sys_t *p_sys = p_access->p_sys;

    if( likely(p_sys->p_fifo != ((void*)0)) )
        block_FifoRelease( p_sys->p_fifo );

    if (p_sys->flow)
    {
        if (p_sys->flow->fd_in >= 0)
            net_Close (p_sys->flow->fd_in);
        if (p_sys->flow->fd_nack >= 0)
            net_Close (p_sys->flow->fd_nack);
        if (p_sys->flow->fd_rtcp_m >= 0)
            net_Close (p_sys->flow->fd_rtcp_m);
        for (int i=0; i<RIST_QUEUE_SIZE; i++) {
            struct rtp_pkt *pkt = &(p_sys->flow->buffer[i]);
            if (pkt->buffer && pkt->buffer->i_buffer > 0) {
                block_Release(pkt->buffer);
                pkt->buffer = ((void*)0);
            }
        }
        free(p_sys->flow->buffer);
        free(p_sys->flow);
    }

    vlc_mutex_destroy( &p_sys->lock );
}
