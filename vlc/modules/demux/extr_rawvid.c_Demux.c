
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int uint8_t ;
struct TYPE_7__ {int out; int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_8__ {int pcr; int p_es_video; int frame_size; scalar_t__ b_y4m; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_9__ {int i_pts; int i_dts; } ;
typedef TYPE_3__ block_t ;


 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_SUCCESS ;
 int date_Get (int *) ;
 int date_Increment (int *,int) ;
 int es_out_Send (int ,int ,TYPE_3__*) ;
 int es_out_SetPCR (int ,int ) ;
 TYPE_3__* vlc_stream_Block (int ,int ) ;
 int vlc_stream_Read (int ,int*,int) ;

__attribute__((used)) static int Demux( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_block;
    vlc_tick_t i_pcr = date_Get( &p_sys->pcr );


    es_out_SetPCR( p_demux->out, i_pcr );

    if( p_sys->b_y4m )
    {


        if( vlc_stream_Read( p_demux->s, ((void*)0), 5 ) < 5 )
            return VLC_DEMUXER_EOF;

        for( ;; )
        {
            uint8_t b;
            if( vlc_stream_Read( p_demux->s, &b, 1 ) < 1 )
                return VLC_DEMUXER_EOF;
            if( b == 0x0a )
                break;
        }
    }

    p_block = vlc_stream_Block( p_demux->s, p_sys->frame_size );
    if( p_block == ((void*)0) )
        return VLC_DEMUXER_EOF;

    p_block->i_dts = p_block->i_pts = i_pcr;
    es_out_Send( p_demux->out, p_sys->p_es_video, p_block );

    date_Increment( &p_sys->pcr, 1 );

    return VLC_DEMUXER_SUCCESS;
}
