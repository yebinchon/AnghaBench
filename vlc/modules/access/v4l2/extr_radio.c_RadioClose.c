
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int fd; int controls; } ;
typedef TYPE_2__ demux_sys_t ;


 int ControlsDeinit (int ,int ) ;
 int free (TYPE_2__*) ;
 int v4l2_close (int ) ;
 int vlc_object_parent (int *) ;

void RadioClose (vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    demux_sys_t *sys = demux->p_sys;

    ControlsDeinit(vlc_object_parent(obj), sys->controls);
    v4l2_close (sys->fd);
    free (sys);
}
