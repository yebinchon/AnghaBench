
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* sys; } ;
typedef TYPE_3__ vout_window_t ;
struct TYPE_7__ {unsigned int width; unsigned int height; } ;
struct TYPE_8__ {int width; int height; } ;
struct TYPE_10__ {int surface; TYPE_1__ set; TYPE_2__ wm; } ;
typedef TYPE_4__ vout_window_sys_t ;


 int vout_window_ReportSize (TYPE_3__*,unsigned int,unsigned int) ;
 int xdg_surface_set_window_geometry (int ,int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void ReportSize(vout_window_t *wnd)
{
    vout_window_sys_t *sys = wnd->sys;


    unsigned width = sys->wm.width ? sys->wm.width : sys->set.width;
    unsigned height = sys->wm.height ? sys->wm.height : sys->set.height;

    vout_window_ReportSize(wnd, width, height);
    xdg_surface_set_window_geometry(sys->surface, 0, 0, width, height);
}
