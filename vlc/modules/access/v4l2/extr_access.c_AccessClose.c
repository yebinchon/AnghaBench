
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int fd; int controls; int bufc; int * bufv; } ;
typedef TYPE_2__ access_sys_t ;


 int ControlsDeinit (int ,int ) ;
 int StopMmap (int ,int *,int ) ;
 int free (TYPE_2__*) ;
 int v4l2_close (int ) ;
 int vlc_object_parent (int *) ;

void AccessClose( vlc_object_t *obj )
{
    stream_t *access = (stream_t *)obj;
    access_sys_t *sys = access->p_sys;

    if (sys->bufv != ((void*)0))
        StopMmap (sys->fd, sys->bufv, sys->bufc);
    ControlsDeinit(vlc_object_parent(obj), sys->controls);
    v4l2_close (sys->fd);
    free( sys );
}
