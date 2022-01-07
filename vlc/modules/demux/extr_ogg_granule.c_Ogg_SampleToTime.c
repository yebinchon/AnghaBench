
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_4__ {int dts; } ;
typedef TYPE_1__ logical_stream_t ;
typedef int int64_t ;
typedef int date_t ;


 int Ogg_ShiftPacketSample (TYPE_1__ const*,int ,int) ;
 int VLC_TICK_0 ;
 int VLC_TICK_INVALID ;
 int date_Increment (int *,int ) ;
 int date_Set (int *,int ) ;

vlc_tick_t Ogg_SampleToTime( const logical_stream_t *p_stream, int64_t i_sample, bool b_start )
{
    i_sample = Ogg_ShiftPacketSample( p_stream, i_sample, b_start );
    if( i_sample < 0 )
        return VLC_TICK_INVALID;

    date_t d = p_stream->dts;
    date_Set(&d, VLC_TICK_0);
    return date_Increment( &d, i_sample );
}
