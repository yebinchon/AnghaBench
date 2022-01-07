
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_5__ {int d3d_dev; int outside_opaque; int (* swapCb ) (int ) ;} ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int picture_t ;


 int VLC_UNUSED (int *) ;
 int d3d11_device_lock (int *) ;
 int d3d11_device_unlock (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void Display(vout_display_t *vd, picture_t *picture)
{
    vout_display_sys_t *sys = vd->sys;
    VLC_UNUSED(picture);

    d3d11_device_lock( &sys->d3d_dev );
    sys->swapCb(sys->outside_opaque);
    d3d11_device_unlock( &sys->d3d_dev );
}
