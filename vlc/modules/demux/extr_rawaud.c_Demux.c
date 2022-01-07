
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int out; int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_8__ {int i_frame_samples; int pts; int p_es; int i_frame_size; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_9__ {int i_pts; int i_dts; } ;
typedef TYPE_3__ block_t ;


 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_SUCCESS ;
 int date_Get (int *) ;
 int date_Increment (int *,int ) ;
 int es_out_Send (int ,int ,TYPE_3__*) ;
 int es_out_SetPCR (int ,int ) ;
 TYPE_3__* vlc_stream_Block (int ,int ) ;

__attribute__((used)) static int Demux( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_block;

    p_block = vlc_stream_Block( p_demux->s, p_sys->i_frame_size );
    if( p_block == ((void*)0) )
        return VLC_DEMUXER_EOF;

    p_block->i_dts = p_block->i_pts = date_Get( &p_sys->pts );

    es_out_SetPCR( p_demux->out, p_block->i_pts );
    es_out_Send( p_demux->out, p_sys->p_es, p_block );

    date_Increment( &p_sys->pts, p_sys->i_frame_samples );

    return VLC_DEMUXER_SUCCESS;
}
