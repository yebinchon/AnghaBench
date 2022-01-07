
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_window_t ;
struct TYPE_9__ {int hwnd; } ;
typedef TYPE_2__ vout_window_sys_t ;
struct TYPE_10__ {int height; int width; int y; int x; scalar_t__ is_decorated; } ;
typedef TYPE_3__ vout_window_cfg_t ;
typedef int LONG ;


 int GWL_STYLE ;
 int MoveWindow (int ,int ,int ,int ,int ,int ) ;
 int Resize (TYPE_1__*,int ,int ) ;
 int SW_SHOW ;
 int SetWindowLong (int ,int ,int) ;
 int ShowWindow (int ,int ) ;
 int TRUE ;
 int VLC_SUCCESS ;
 int WS_CLIPCHILDREN ;
 int WS_DISABLED ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_POPUP ;
 int WS_SIZEBOX ;
 int var_InheritBool (TYPE_1__*,char*) ;

__attribute__((used)) static int Enable(vout_window_t *wnd, const vout_window_cfg_t *cfg)
{
    vout_window_sys_t *sys = wnd->sys;

    LONG i_window_style;
    if (cfg->is_decorated)
        i_window_style = WS_OVERLAPPEDWINDOW | WS_SIZEBOX;
    else
        i_window_style = WS_POPUP;
    i_window_style |= WS_CLIPCHILDREN;


    bool b_mouse_support = var_InheritBool( wnd, "mouse-events" );
    bool b_key_support = var_InheritBool( wnd, "keyboard-events" );
    if( !b_mouse_support && !b_key_support )
        i_window_style |= WS_DISABLED;
    SetWindowLong(sys->hwnd, GWL_STYLE, i_window_style);

    if (cfg->x || cfg->y)
        MoveWindow(sys->hwnd, cfg->x, cfg->y, cfg->width, cfg->height, TRUE);

    Resize(wnd, cfg->width, cfg->height);

    ShowWindow( sys->hwnd, SW_SHOW );
    return VLC_SUCCESS;
}
