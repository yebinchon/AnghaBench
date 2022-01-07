
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int subpicture_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_5__ {int lock; int id_video; } ;
typedef TYPE_2__ sout_stream_sys_t ;


 int subpicture_Delete (int *) ;
 int transcode_video_push_spu (TYPE_1__*,int ,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void SendSpuToVideoCallback( void *cbdata, subpicture_t *p_subpicture )
{
    sout_stream_t *p_stream = cbdata;
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    vlc_mutex_lock( &p_sys->lock );
    if( !p_sys->id_video )
        subpicture_Delete( p_subpicture );
    else
        transcode_video_push_spu( p_stream,
                                  p_sys->id_video, p_subpicture );
    vlc_mutex_unlock( &p_sys->lock );
}
