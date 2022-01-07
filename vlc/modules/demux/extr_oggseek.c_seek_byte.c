
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int b_page_waiting; int i_input_position; int oy; } ;
typedef TYPE_2__ demux_sys_t ;


 int ogg_sync_reset (int *) ;
 int vlc_stream_Seek (int ,int ) ;

__attribute__((used)) static void seek_byte( demux_t *p_demux, int64_t i_pos )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if ( ! vlc_stream_Seek( p_demux->s, i_pos ) )
    {
        ogg_sync_reset( &p_sys->oy );

        p_sys->i_input_position = i_pos;
        p_sys->b_page_waiting = 0;
    }
}
