
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_5__ {int force; } ;
struct TYPE_6__ {TYPE_1__ obj; int s; } ;
typedef TYPE_2__ demux_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 size_t vlc_stream_Peek (int ,char const**,int) ;

__attribute__((used)) static int ProbeWEBVTT( demux_t *p_demux )
{
    const uint8_t *p_peek;
    size_t i_peek = vlc_stream_Peek( p_demux->s, &p_peek, 16 );
    if( i_peek < 16 )
        return VLC_EGENERIC;

    if( !memcmp( p_peek, "\xEF\xBB\xBF", 3 ) )
        p_peek += 3;

    if( ( memcmp( p_peek, "WEBVTT", 6 ) ||
          ( p_peek[6] != '\n' &&
            p_peek[6] != ' ' &&
            p_peek[6] != '\t' &&
           ( p_peek[6] != '\r' || p_peek[7] != '\n' ) )
        ) && !p_demux->obj.force )
    {
        msg_Dbg( p_demux, "subtitle demux discarded" );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
