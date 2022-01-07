
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int * vbi; int fd; int controls; int bufc; int * bufv; int thread; } ;
typedef TYPE_2__ demux_sys_t ;


 int CloseVBI (int *) ;
 int ControlsDeinit (int ,int ) ;
 int StopMmap (int ,int *,int ) ;
 int free (TYPE_2__*) ;
 int v4l2_close (int ) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;
 int vlc_object_parent (int *) ;

void DemuxClose( vlc_object_t *obj )
{
    demux_t *demux = (demux_t *)obj;
    demux_sys_t *sys = demux->p_sys;

    vlc_cancel (sys->thread);
    vlc_join (sys->thread, ((void*)0));
    if (sys->bufv != ((void*)0))
        StopMmap (sys->fd, sys->bufv, sys->bufc);
    ControlsDeinit(vlc_object_parent(obj), sys->controls);
    v4l2_close (sys->fd);






    free( sys );
}
