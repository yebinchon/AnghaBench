
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
struct TYPE_10__ {unsigned int right; unsigned int bottom; } ;
typedef TYPE_3__ RECT ;
typedef int LONG ;


 int AdjustWindowRect (TYPE_3__*,int ,int ) ;
 int GWL_STYLE ;
 int GetWindowLong (int ,int ) ;
 int RECTHeight (TYPE_3__) ;
 int RECTWidth (TYPE_3__) ;
 int SWP_NOMOVE ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static void Resize(vout_window_t *wnd, unsigned width, unsigned height)
{
    vout_window_sys_t *sys = wnd->sys;





    RECT decorated_window = {
        .right = width,
        .bottom = height,
    };
    LONG i_window_style = GetWindowLong(sys->hwnd, GWL_STYLE);
    AdjustWindowRect( &decorated_window, i_window_style, 0 );
    SetWindowPos(sys->hwnd, 0, 0, 0,
                 RECTWidth(decorated_window), RECTHeight(decorated_window),
                 SWP_NOZORDER|SWP_NOMOVE);
}
