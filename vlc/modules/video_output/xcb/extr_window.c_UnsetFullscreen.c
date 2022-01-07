
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_window_t ;
struct TYPE_6__ {int conn; int wm_state_fullscreen; } ;
typedef TYPE_2__ vout_window_sys_t ;


 int change_wm_state (TYPE_1__*,int,int ) ;
 int xcb_flush (int ) ;

__attribute__((used)) static void UnsetFullscreen(vout_window_t *wnd)
{
    vout_window_sys_t *sys = wnd->sys;

    change_wm_state(wnd, 0, sys->wm_state_fullscreen);
    xcb_flush(sys->conn);
}
