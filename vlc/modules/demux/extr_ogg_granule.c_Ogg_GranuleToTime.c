
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int logical_stream_t ;
typedef int int64_t ;


 int Ogg_GranuleIsValid (int const*,int) ;
 int Ogg_GranuleToSample (int const*,int) ;
 int Ogg_GranuleToSampleDelta (int const*,int) ;
 int Ogg_SampleToTime (int const*,int,int) ;
 int VLC_TICK_INVALID ;

vlc_tick_t Ogg_GranuleToTime( const logical_stream_t *p_stream, int64_t i_granule,
                           bool b_start, bool b_pts )
{
    if( !Ogg_GranuleIsValid( p_stream, i_granule ) )
        return VLC_TICK_INVALID;

    int64_t i_sample = Ogg_GranuleToSample( p_stream, i_granule );
    if( b_pts )
    {
        int64_t i_delta = Ogg_GranuleToSampleDelta( p_stream, i_granule );
        if( i_delta != -1 )
            i_sample += i_delta;
    }
    return Ogg_SampleToTime( p_stream, i_sample, b_start );
}
