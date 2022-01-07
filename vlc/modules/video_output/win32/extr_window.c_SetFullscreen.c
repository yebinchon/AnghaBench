
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_window_t ;
struct TYPE_14__ {int length; } ;
struct TYPE_11__ {int hwnd; int i_window_style; TYPE_8__ window_placement; } ;
typedef TYPE_2__ vout_window_sys_t ;
typedef int WINDOWPLACEMENT ;
struct TYPE_13__ {int top; int left; } ;
struct TYPE_12__ {int cbSize; TYPE_6__ rcMonitor; } ;
typedef TYPE_3__ MONITORINFO ;
typedef int HMONITOR ;


 int GWL_STYLE ;
 scalar_t__ GetMonitorInfo (int ,TYPE_3__*) ;
 int GetWindowLong (int ,int ) ;
 int GetWindowPlacement (int ,TYPE_8__*) ;
 int MONITOR_DEFAULTTONEAREST ;
 int MonitorFromWindow (int ,int ) ;
 int RECTHeight (TYPE_6__) ;
 int RECTWidth (TYPE_6__) ;
 int SWP_FRAMECHANGED ;
 int SWP_NOZORDER ;
 int SetWindowLong (int ,int ,int) ;
 int SetWindowPos (int ,int ,int ,int ,int ,int ,int) ;
 int VLC_UNUSED (char const*) ;
 int WS_CLIPCHILDREN ;
 int WS_VISIBLE ;
 int msg_Dbg (TYPE_1__*,char*) ;

__attribute__((used)) static void SetFullscreen(vout_window_t *wnd, const char *id)
{
    VLC_UNUSED(id);
    msg_Dbg(wnd, "entering fullscreen mode");
    vout_window_sys_t *sys = wnd->sys;

    sys->window_placement.length = sizeof(WINDOWPLACEMENT);
    GetWindowPlacement(sys->hwnd, &sys->window_placement);

    sys->i_window_style = GetWindowLong(sys->hwnd, GWL_STYLE);


    SetWindowLong(sys->hwnd, GWL_STYLE, WS_CLIPCHILDREN | WS_VISIBLE);



    HMONITOR hmon = MonitorFromWindow(sys->hwnd, MONITOR_DEFAULTTONEAREST);
    MONITORINFO mi;
    mi.cbSize = sizeof(MONITORINFO);
    if (GetMonitorInfo(hmon, &mi))
        SetWindowPos(sys->hwnd, 0,
                     mi.rcMonitor.left,
                     mi.rcMonitor.top,
                     RECTWidth(mi.rcMonitor),
                     RECTHeight(mi.rcMonitor),
                     SWP_NOZORDER|SWP_FRAMECHANGED);
}
