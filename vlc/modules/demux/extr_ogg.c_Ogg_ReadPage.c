
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ogg_page ;
struct TYPE_4__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int oy; } ;
typedef TYPE_2__ demux_sys_t ;


 int OGGSEEK_BYTES_TO_READ ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 char* ogg_sync_buffer (int *,int ) ;
 int ogg_sync_pageout (int *,int *) ;
 int ogg_sync_wrote (int *,int) ;
 int vlc_stream_Read (int ,char*,int ) ;

__attribute__((used)) static int Ogg_ReadPage( demux_t *p_demux, ogg_page *p_oggpage )
{
    demux_sys_t *p_ogg = p_demux->p_sys ;
    int i_read = 0;
    char *p_buffer;

    while( ogg_sync_pageout( &p_ogg->oy, p_oggpage ) != 1 )
    {
        p_buffer = ogg_sync_buffer( &p_ogg->oy, OGGSEEK_BYTES_TO_READ );

        i_read = vlc_stream_Read( p_demux->s, p_buffer, OGGSEEK_BYTES_TO_READ );
        if( i_read <= 0 )
            return VLC_EGENERIC;

        ogg_sync_wrote( &p_ogg->oy, i_read );
    }

    return VLC_SUCCESS;
}
