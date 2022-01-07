
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_5__ {int root; int mainloop; int context; } ;
typedef TYPE_2__ services_discovery_sys_t ;


 int DestroySource ;
 int free (TYPE_2__*) ;
 int tdestroy (int ,int ) ;
 int vlc_pa_disconnect (int *,int ,int ) ;

__attribute__((used)) static void Close (vlc_object_t *obj)
{
    services_discovery_t *sd = (services_discovery_t *)obj;
    services_discovery_sys_t *sys = sd->p_sys;

    vlc_pa_disconnect (obj, sys->context, sys->mainloop);
    tdestroy (sys->root, DestroySource);
    free (sys);
}
