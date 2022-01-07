
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_6__ {int s; } ;
typedef TYPE_1__ demux_t ;


 scalar_t__ MpgaCheckSync (int const*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int const WAVE_FORMAT_MPEG ;
 int const WAVE_FORMAT_MPEGLAYER3 ;
 int const WAVE_FORMAT_UNKNOWN ;
 scalar_t__ WavSkipHeader (TYPE_1__*,int*,int const*,int *) ;
 scalar_t__ demux_IsForced (TYPE_1__*,char*) ;
 int demux_IsPathExtension (TYPE_1__*,char*) ;
 scalar_t__ vlc_stream_Peek (int ,int const**,int) ;
 int vlc_stream_Tell (int ) ;

__attribute__((used)) static int MpgaProbe( demux_t *p_demux, uint64_t *pi_offset )
{
    const uint16_t rgi_twocc[] = { WAVE_FORMAT_MPEG, WAVE_FORMAT_MPEGLAYER3, WAVE_FORMAT_UNKNOWN };
    bool b_forced;
    bool b_forced_demux;
    uint64_t i_offset;

    const uint8_t *p_peek;
    uint64_t i_skip;
    ssize_t i_peek;

    b_forced = demux_IsPathExtension( p_demux, ".mp3" );
    b_forced_demux = demux_IsForced( p_demux, "mp3" ) ||
                     demux_IsForced( p_demux, "mpga" );

    i_offset = vlc_stream_Tell( p_demux->s );

    if( WavSkipHeader( p_demux, &i_skip, rgi_twocc, ((void*)0) ) )
    {
        if( !b_forced_demux )
            return VLC_EGENERIC;

        return VLC_EGENERIC;
    }

    i_peek = vlc_stream_Peek( p_demux->s, &p_peek, i_skip + 4 );
    if( i_peek <= 0 || (uint64_t) i_peek < i_skip + 4 )
        return VLC_EGENERIC;

    if( !MpgaCheckSync( &p_peek[i_skip] ) )
    {
        bool b_ok = 0;

        if( !b_forced_demux && !b_forced )
            return VLC_EGENERIC;

        i_peek = vlc_stream_Peek( p_demux->s, &p_peek, i_skip + 8096 );
        while( i_peek > 0 && i_skip + 4 < (uint64_t) i_peek )
        {
            if( MpgaCheckSync( &p_peek[i_skip] ) )
            {
                b_ok = 1;
                break;
            }
            i_skip++;
        }
        if( !b_ok && !b_forced_demux )
            return VLC_EGENERIC;
    }
    *pi_offset = i_offset + i_skip;
    return VLC_SUCCESS;
}
