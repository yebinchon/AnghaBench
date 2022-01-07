
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_5__ {int * pool; } ;
typedef TYPE_2__ vout_display_sys_t ;


 int picture_pool_Release (int *) ;

__attribute__((used)) static void Direct3D11DestroyPool(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    if (sys->pool)
    {
        picture_pool_Release(sys->pool);
        sys->pool = ((void*)0);
    }
}
