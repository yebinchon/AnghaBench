
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_6__ {int d3d_dev; } ;
typedef TYPE_2__ vout_display_sys_t ;


 int D3D9_ReleaseDevice (int *) ;
 int Direct3D9DestroyResources (TYPE_1__*) ;

__attribute__((used)) static void Direct3D9Close(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    Direct3D9DestroyResources(vd);
    D3D9_ReleaseDevice(&sys->d3d_dev);
}
