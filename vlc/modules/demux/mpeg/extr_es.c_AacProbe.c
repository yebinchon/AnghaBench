
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_7__ {int s; } ;
typedef TYPE_1__ demux_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ demux_IsForced (TYPE_1__*,char*) ;
 scalar_t__ demux_IsPathExtension (TYPE_1__*,char*) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int msg_Err (TYPE_1__*,char*) ;
 int strncmp (char*,char*,int) ;
 int vlc_stream_Peek (int ,int const**,int) ;
 int vlc_stream_Tell (int ) ;

__attribute__((used)) static int AacProbe( demux_t *p_demux, uint64_t *pi_offset )
{
    bool b_forced;
    bool b_forced_demux;

    uint64_t i_offset;
    const uint8_t *p_peek;

    b_forced = demux_IsPathExtension( p_demux, ".aac" ) ||
               demux_IsPathExtension( p_demux, ".aacp" );
    b_forced_demux = demux_IsForced( p_demux, "m4a" ) ||
                     demux_IsForced( p_demux, "aac" ) ||
                     demux_IsForced( p_demux, "mp4a" );

    if( !b_forced_demux && !b_forced )
        return VLC_EGENERIC;

    i_offset = vlc_stream_Tell( p_demux->s );


    if( vlc_stream_Peek( p_demux->s, &p_peek, 10 ) < 10 )
    {
        msg_Dbg( p_demux, "cannot peek" );
        return VLC_EGENERIC;
    }
    if( !strncmp( (char *)p_peek, "ADIF", 4 ) )
    {
        msg_Err( p_demux, "ADIF file. Not yet supported. (Please report)" );
        return VLC_EGENERIC;
    }

    *pi_offset = i_offset;
    return VLC_SUCCESS;
}
