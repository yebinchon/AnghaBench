
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_5__ {scalar_t__ drm_fd; scalar_t__ pool; } ;
typedef TYPE_2__ vout_display_sys_t ;


 int drmDropMaster (scalar_t__) ;
 int picture_pool_Release (scalar_t__) ;

__attribute__((used)) static void Close(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    if (sys->pool)
        picture_pool_Release(sys->pool);

    if (sys->drm_fd)
        drmDropMaster(sys->drm_fd);
}
