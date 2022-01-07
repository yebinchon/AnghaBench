
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_window_t ;
struct TYPE_5__ {int hwnd; } ;
typedef TYPE_2__ vout_window_sys_t ;


 int PostMessage (int ,int ,unsigned int,int ) ;
 int WM_VLC_SET_TOP_STATE ;

__attribute__((used)) static void SetState(vout_window_t *wnd, unsigned state)
{
    vout_window_sys_t *sys = wnd->sys;
    PostMessage( sys->hwnd, WM_VLC_SET_TOP_STATE, state, 0);
}
