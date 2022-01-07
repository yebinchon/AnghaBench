
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_8__ {int out; int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_9__ {unsigned int i_block_frames; scalar_t__ i_data_size; unsigned int i_frame_size; int pts; int p_es; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_10__ {unsigned int i_buffer; int i_pts; int i_dts; } ;
typedef TYPE_3__ block_t ;


 unsigned int FRAME_LENGTH ;
 scalar_t__ HEADER_LENGTH ;
 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_SUCCESS ;
 int date_Get (int *) ;
 int date_Increment (int *,unsigned int) ;
 int es_out_Send (int ,int ,TYPE_3__*) ;
 int es_out_SetPCR (int ,int ) ;
 int msg_Warn (TYPE_1__*,char*) ;
 TYPE_3__* vlc_stream_Block (int ,unsigned int) ;
 scalar_t__ vlc_stream_Tell (int ) ;

__attribute__((used)) static int Demux( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_block;
    int64_t i_offset = vlc_stream_Tell( p_demux->s );
    unsigned i_frames = p_sys->i_block_frames;

    if( p_sys->i_data_size > 0 &&
        (i_offset - HEADER_LENGTH) >= p_sys->i_data_size )
    {
        return VLC_DEMUXER_EOF;
    }

    p_block = vlc_stream_Block( p_demux->s, p_sys->i_frame_size * i_frames );
    if( p_block == ((void*)0) )
    {
        msg_Warn( p_demux, "cannot read data" );
        return VLC_DEMUXER_EOF;
    }

    i_frames = p_block->i_buffer / p_sys->i_frame_size;
    p_block->i_dts = p_block->i_pts = date_Get( &p_sys->pts );
    es_out_SetPCR( p_demux->out, p_block->i_pts );
    es_out_Send( p_demux->out, p_sys->p_es, p_block );

    date_Increment( &p_sys->pts, i_frames * FRAME_LENGTH );

    return VLC_DEMUXER_SUCCESS;
}
