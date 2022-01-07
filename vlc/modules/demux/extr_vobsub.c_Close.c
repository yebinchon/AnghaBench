
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int i_tracks; struct TYPE_5__* track; struct TYPE_5__* p_subtitles; scalar_t__ p_vobsub_stream; } ;
typedef TYPE_2__ demux_sys_t ;


 int free (TYPE_2__*) ;
 int vlc_stream_Delete (scalar_t__) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    if( p_sys->p_vobsub_stream )
        vlc_stream_Delete( p_sys->p_vobsub_stream );


    for( int i = 0; i < p_sys->i_tracks; i++ )
        free( p_sys->track[i].p_subtitles );
    free( p_sys->track );
    free( p_sys );
}
