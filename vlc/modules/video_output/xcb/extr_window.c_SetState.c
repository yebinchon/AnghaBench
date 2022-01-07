
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_window_t ;
struct TYPE_6__ {int conn; int wm_state_below; int wm_state_above; } ;
typedef TYPE_2__ vout_window_sys_t ;


 unsigned int VOUT_WINDOW_STATE_ABOVE ;
 unsigned int VOUT_WINDOW_STATE_BELOW ;
 int change_wm_state (TYPE_1__*,int,int ) ;
 int xcb_flush (int ) ;

__attribute__((used)) static void SetState(vout_window_t *wnd, unsigned state)
{
    vout_window_sys_t *sys = wnd->sys;
    bool above = (state & VOUT_WINDOW_STATE_ABOVE) != 0;
    bool below = (state & VOUT_WINDOW_STATE_BELOW) != 0;

    change_wm_state(wnd, above, sys->wm_state_above);
    change_wm_state(wnd, below, sys->wm_state_below);
    xcb_flush(sys->conn);
}
