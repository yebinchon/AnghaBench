
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int out; int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_9__ {scalar_t__ i_frame_length; void* i_still_end; scalar_t__ b_still; int p_es; void* i_time; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_10__ {void* i_pts; void* i_dts; } ;
typedef TYPE_3__ block_t ;


 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int es_out_Send (int ,int ,TYPE_3__*) ;
 int es_out_SetPCR (int ,void*) ;
 int msg_Warn (TYPE_1__*,char*) ;
 TYPE_3__* vlc_stream_Block (int ,int) ;
 void* vlc_tick_now () ;

__attribute__((used)) static int SendBlock( demux_t *p_demux, int i )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_block;

    if( ( p_block = vlc_stream_Block( p_demux->s, i ) ) == ((void*)0) )
    {
        msg_Warn( p_demux, "cannot read data" );
        return VLC_DEMUXER_EOF;
    }

    if( p_sys->i_frame_length != VLC_TICK_INVALID )
    {
        p_block->i_pts = p_sys->i_time;
        p_sys->i_time += p_sys->i_frame_length;
    }
    else
    {
        p_block->i_pts = vlc_tick_now();
    }
    p_block->i_dts = p_block->i_pts;

    es_out_SetPCR( p_demux->out, p_block->i_pts );
    es_out_Send( p_demux->out, p_sys->p_es, p_block );

    if( p_sys->b_still )
        p_sys->i_still_end = vlc_tick_now() + p_sys->i_frame_length;

    return VLC_DEMUXER_SUCCESS;
}
