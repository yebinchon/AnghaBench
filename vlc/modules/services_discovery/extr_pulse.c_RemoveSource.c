
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_5__ {int root; } ;
typedef TYPE_2__ services_discovery_sys_t ;


 int DestroySource (struct device*) ;
 int cmpsrc ;
 int tdelete (struct device*,int *,int ) ;
 void** tfind (int *,int *,int ) ;

__attribute__((used)) static void RemoveSource (services_discovery_t *sd, uint32_t idx)
{
    services_discovery_sys_t *sys = sd->p_sys;

    void **dp = tfind (&idx, &sys->root, cmpsrc);
    if (dp == ((void*)0))
        return;

    struct device *d = *dp;
    tdelete (d, &sys->root, cmpsrc);
    DestroySource (d);
}
