
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct udev {int dummy; } ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_5__ {int root; int * monitor; int thread; } ;
typedef TYPE_2__ services_discovery_sys_t ;


 int DestroyDevice ;
 int free (TYPE_2__*) ;
 int tdestroy (int ,int ) ;
 struct udev* udev_monitor_get_udev (int *) ;
 int udev_monitor_unref (int *) ;
 int udev_unref (struct udev*) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;

__attribute__((used)) static void Close (vlc_object_t *obj)
{
    services_discovery_t *sd = (services_discovery_t *)obj;
    services_discovery_sys_t *p_sys = sd->p_sys;

    if (p_sys->monitor != ((void*)0))
    {
        struct udev *udev = udev_monitor_get_udev (p_sys->monitor);

        vlc_cancel (p_sys->thread);
        vlc_join (p_sys->thread, ((void*)0));
        udev_monitor_unref (p_sys->monitor);
        udev_unref (udev);
    }

    tdestroy (p_sys->root, DestroyDevice);
    free (p_sys);
}
