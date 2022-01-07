
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_6__ {int fd; int thread; int * input; int playlist; } ;
typedef TYPE_2__ intf_sys_t ;


 int PlaylistEvent ;
 int free (TYPE_2__*) ;
 int net_Close (int ) ;
 int var_DelCallback (int ,char*,int ,TYPE_1__*) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;

void Close(vlc_object_t *object)
{
    intf_thread_t *intf = (intf_thread_t*)object;
    intf_sys_t *sys = intf->p_sys;

    var_DelCallback(sys->playlist, "input-current", PlaylistEvent, intf);

    if (sys->input != ((void*)0)) {
        vlc_cancel(sys->thread);
        vlc_join(sys->thread, ((void*)0));
    }

    net_Close(sys->fd);
    free(sys);
}
