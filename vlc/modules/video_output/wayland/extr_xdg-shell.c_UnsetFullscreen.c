
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wl; } ;
struct TYPE_6__ {TYPE_1__ display; TYPE_3__* sys; } ;
typedef TYPE_2__ vout_window_t ;
struct TYPE_7__ {int toplevel; } ;
typedef TYPE_3__ vout_window_sys_t ;


 int wl_display_flush (int ) ;
 int xdg_toplevel_unset_fullscreen (int ) ;

__attribute__((used)) static void UnsetFullscreen(vout_window_t *wnd)
{
    vout_window_sys_t *sys = wnd->sys;

    xdg_toplevel_unset_fullscreen(sys->toplevel);
    wl_display_flush(wnd->display.wl);
}
