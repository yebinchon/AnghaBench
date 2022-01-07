
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int logical_stream_t ;
struct TYPE_6__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_7__ {scalar_t__ i_pcr; int i_streams; int b_slave; int ** pp_stream; } ;
typedef TYPE_2__ demux_sys_t ;


 scalar_t__ Ogg_GeneratePCR (TYPE_1__*,int) ;
 int Ogg_HasQueuedBlocks (int *) ;
 int Ogg_SendQueuedBlock (TYPE_1__*,int *) ;
 scalar_t__ VLC_TICK_INVALID ;
 int es_out_SetPCR (int ,scalar_t__) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void Ogg_OutputQueues( demux_t *p_demux, bool b_drain )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    vlc_tick_t i_pcr;


    if( p_sys->i_pcr == VLC_TICK_INVALID )
    {
        i_pcr = Ogg_GeneratePCR( p_demux, b_drain );
        if( i_pcr != VLC_TICK_INVALID && i_pcr != p_sys->i_pcr )
        {
            p_sys->i_pcr = i_pcr;
            if( likely( !p_sys->b_slave ) )
                es_out_SetPCR( p_demux->out, p_sys->i_pcr );
        }
    }

    if( p_sys->i_pcr != VLC_TICK_INVALID )
    {
        bool b_continue;
        do
        {
            b_continue = 0;
            for( int i_stream = 0; i_stream < p_sys->i_streams; i_stream++ )
            {
                logical_stream_t *p_stream = p_sys->pp_stream[i_stream];
                if( Ogg_HasQueuedBlocks( p_stream ) )
                    Ogg_SendQueuedBlock( p_demux, p_stream );
                b_continue |= Ogg_HasQueuedBlocks( p_stream );
            }


            i_pcr = Ogg_GeneratePCR( p_demux, b_drain );
            if( i_pcr != VLC_TICK_INVALID && i_pcr != p_sys->i_pcr )
            {
                p_sys->i_pcr = i_pcr;
                if( likely( !p_sys->b_slave ) )
                    es_out_SetPCR( p_demux->out, p_sys->i_pcr );
            }
        } while ( b_continue );
    }
}
