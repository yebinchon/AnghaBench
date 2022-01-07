
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_9__ {int out; int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_10__ {int p_es; int pts; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_11__ {scalar_t__ i_pts; scalar_t__ i_dts; } ;
typedef TYPE_3__ block_t ;


 scalar_t__ CDG_FRAME_DELTA ;
 int CDG_FRAME_SIZE ;
 scalar_t__ PosToDate (TYPE_1__*) ;
 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_SUCCESS ;
 scalar_t__ VLC_TICK_0 ;
 scalar_t__ date_Get (int *) ;
 int date_Set (int *,scalar_t__) ;
 int es_out_Send (int ,int ,TYPE_3__*) ;
 int es_out_SetPCR (int ,scalar_t__) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 TYPE_3__* vlc_stream_Block (int ,int ) ;

__attribute__((used)) static int Demux( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_block;
    vlc_tick_t i_date;

    p_block = vlc_stream_Block( p_demux->s, CDG_FRAME_SIZE );
    if( p_block == ((void*)0) )
    {
        msg_Dbg( p_demux, "cannot read data, eof" );
        return VLC_DEMUXER_EOF;
    }

    i_date = PosToDate( p_demux );
    if( i_date >= date_Get( &p_sys->pts ) + CDG_FRAME_DELTA )
    {
        p_block->i_dts = p_block->i_pts = VLC_TICK_0 + i_date;
        date_Set( &p_sys->pts, VLC_TICK_0 + i_date );
    }
    else
    {
        p_block->i_dts = VLC_TICK_0 + i_date;
        p_block->i_pts = date_Get( &p_sys->pts );
    }

    es_out_SetPCR( p_demux->out, p_block->i_pts );
    es_out_Send( p_demux->out, p_sys->p_es, p_block );
    return VLC_DEMUXER_SUCCESS;
}
