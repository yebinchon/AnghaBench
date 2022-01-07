
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_5__ {int * apps_root; int apps; int conn; int thread; } ;
typedef TYPE_2__ services_discovery_sys_t ;


 int DelApp ;
 int free (TYPE_2__*) ;
 int input_item_Release (int *) ;
 int tdestroy (int ,int ) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;
 int xcb_disconnect (int ) ;

__attribute__((used)) static void Close (vlc_object_t *obj)
{
    services_discovery_t *sd = (services_discovery_t *)obj;
    services_discovery_sys_t *p_sys = sd->p_sys;

    vlc_cancel (p_sys->thread);
    vlc_join (p_sys->thread, ((void*)0));
    xcb_disconnect (p_sys->conn);
    tdestroy (p_sys->apps, DelApp);
    if (p_sys->apps_root != ((void*)0))
        input_item_Release(p_sys->apps_root);
    free (p_sys);
}
