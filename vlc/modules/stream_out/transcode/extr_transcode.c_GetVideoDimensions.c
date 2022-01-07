
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_5__ {int lock; scalar_t__ id_video; } ;
typedef TYPE_2__ sout_stream_sys_t ;


 int VLC_EGENERIC ;
 int transcode_video_get_output_dimensions (TYPE_1__*,scalar_t__,unsigned int*,unsigned int*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int GetVideoDimensions( void *cbdata, unsigned *w, unsigned *h )
{
    sout_stream_t *p_stream = cbdata;
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    int i_ret = VLC_EGENERIC;
    vlc_mutex_lock( &p_sys->lock );
    if( p_sys->id_video )
        i_ret = transcode_video_get_output_dimensions( p_stream,
                                                       p_sys->id_video, w, h );
    vlc_mutex_unlock( &p_sys->lock );
    return i_ret;
}
