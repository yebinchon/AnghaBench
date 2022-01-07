
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwnd; } ;
typedef TYPE_1__ vout_window_sys_t ;
struct vout_window_t {TYPE_1__* sys; } ;


 int SW_HIDE ;
 int ShowWindow (int ,int ) ;

__attribute__((used)) static void Disable(struct vout_window_t *wnd)
{
    vout_window_sys_t *sys = wnd->sys;
    ShowWindow( sys->hwnd, SW_HIDE );
}
