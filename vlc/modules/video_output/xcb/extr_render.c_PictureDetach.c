
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_5__ {int segment; int conn; } ;
typedef TYPE_2__ vout_display_sys_t ;


 int xcb_shm_detach (int ,int ) ;

__attribute__((used)) static void PictureDetach(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    xcb_shm_detach(sys->conn, sys->segment);
}
