
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int out; int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_10__ {int b_start; scalar_t__ i_pts; int p_es; TYPE_4__* p_current_block; int stream_info; scalar_t__ b_stream_info; int p_packetizer; scalar_t__ i_next_block_flags; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_11__ {scalar_t__ i_dts; struct TYPE_11__* p_next; } ;
typedef TYPE_3__ block_t ;
struct TYPE_12__ {scalar_t__ i_dts; scalar_t__ i_pts; scalar_t__ i_flags; } ;


 int FLAC_PACKET_SIZE ;
 TYPE_3__* GetPacketizedBlock (int ,int *,TYPE_4__**) ;
 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_SUCCESS ;
 scalar_t__ VLC_TICK_0 ;
 scalar_t__ VLC_TICK_INVALID ;
 scalar_t__ __MAX (scalar_t__,scalar_t__) ;
 int es_out_Send (int ,int ,TYPE_3__*) ;
 int es_out_SetPCR (int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 TYPE_4__* vlc_stream_Block (int ,int ) ;

__attribute__((used)) static int Demux( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_block_out;

    bool b_eof = 0;
    if( p_sys->p_current_block == ((void*)0) )
    {
        p_sys->p_current_block = vlc_stream_Block( p_demux->s, FLAC_PACKET_SIZE );
        b_eof = (p_sys->p_current_block == ((void*)0));
    }

    if ( p_sys->p_current_block )
    {
        p_sys->p_current_block->i_flags = p_sys->i_next_block_flags;
        p_sys->i_next_block_flags = 0;
        p_sys->p_current_block->i_pts =
        p_sys->p_current_block->i_dts = p_sys->b_start ? VLC_TICK_0 : VLC_TICK_INVALID;
    }

    while( (p_block_out = GetPacketizedBlock( p_sys->p_packetizer,
                            p_sys->b_stream_info ? &p_sys->stream_info : ((void*)0),
                            p_sys->p_current_block ? &p_sys->p_current_block : ((void*)0) ) ) )
    {

        p_sys->b_start = 0;
        while( p_block_out )
        {
            block_t *p_next = p_block_out->p_next;

            p_block_out->p_next = ((void*)0);


            if( unlikely(p_sys->i_pts == VLC_TICK_INVALID) )
                es_out_SetPCR( p_demux->out, __MAX(p_block_out->i_dts - 1, VLC_TICK_0) );

            p_sys->i_pts = p_block_out->i_dts;

            es_out_Send( p_demux->out, p_sys->p_es, p_block_out );

            es_out_SetPCR( p_demux->out, p_sys->i_pts );

            p_block_out = p_next;
        }
        break;
    }

    return b_eof ? VLC_DEMUXER_EOF : VLC_DEMUXER_SUCCESS;
}
