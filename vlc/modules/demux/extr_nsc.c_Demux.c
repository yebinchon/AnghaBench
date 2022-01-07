
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s; } ;
typedef TYPE_1__ demux_t ;


 int ParseLine (TYPE_1__*,char*) ;
 int VLC_SUCCESS ;
 int free (char*) ;
 char* vlc_stream_ReadLine (int ) ;

__attribute__((used)) static int Demux ( demux_t *p_demux )
{
    char *psz_line;

    while( ( psz_line = vlc_stream_ReadLine( p_demux->s ) ) )
    {
        ParseLine( p_demux, psz_line );
        free( psz_line );
    }
    return VLC_SUCCESS;
}
