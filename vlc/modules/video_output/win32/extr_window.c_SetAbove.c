
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
typedef enum vout_window_state { ____Placeholder_vout_window_state } vout_window_state ;
typedef int HMENU ;


 int CheckMenuItem (int ,int ,int) ;
 int FALSE ;
 int GWL_EXSTYLE ;
 int GetSystemMenu (int ,int ) ;
 int GetWindowLong (int ,int ) ;
 int HWND_BOTTOM ;
 int HWND_NOTOPMOST ;
 int HWND_TOPMOST ;
 int IDM_TOGGLE_ON_TOP ;
 int MFS_CHECKED ;
 int MFS_UNCHECKED ;
 int MF_BYCOMMAND ;
 int SWP_NOMOVE ;
 int SWP_NOSIZE ;
 int SetWindowPos (int ,int ,int ,int ,int ,int ,int) ;



 int WS_EX_TOPMOST ;

__attribute__((used)) static void SetAbove( vout_window_t *wnd, enum vout_window_state state )
{
    vout_window_sys_t *sys = wnd->sys;
    switch (state) {
    case 128:
        if ((GetWindowLong(sys->hwnd, GWL_EXSTYLE) & WS_EX_TOPMOST))
        {
            HMENU hMenu = GetSystemMenu(sys->hwnd, FALSE);
            CheckMenuItem(hMenu, IDM_TOGGLE_ON_TOP, MF_BYCOMMAND | MFS_UNCHECKED);
            SetWindowPos(sys->hwnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOSIZE|SWP_NOMOVE);
        }
        break;
    case 130:
        if (!(GetWindowLong(sys->hwnd, GWL_EXSTYLE) & WS_EX_TOPMOST))
        {
            HMENU hMenu = GetSystemMenu(sys->hwnd, FALSE);
            CheckMenuItem(hMenu, IDM_TOGGLE_ON_TOP, MF_BYCOMMAND | MFS_CHECKED);
            SetWindowPos(sys->hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOSIZE | SWP_NOMOVE);
        }
        break;
    case 129:
        SetWindowPos(sys->hwnd, HWND_BOTTOM, 0, 0, 0, 0, SWP_NOSIZE | SWP_NOMOVE);
        break;

    }
}
