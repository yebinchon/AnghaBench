
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_window_t ;
struct TYPE_6__ {int button_pressed; } ;
typedef TYPE_2__ vout_window_sys_t ;
typedef int HWND ;


 int SetCapture (int ) ;
 int vout_window_ReportMousePressed (TYPE_1__*,unsigned int) ;

__attribute__((used)) static void MousePressed( vout_window_t *wnd, HWND hwnd, unsigned button )
{
    vout_window_sys_t *sys = wnd->sys;
    if( !sys->button_pressed )
        SetCapture( hwnd );
    sys->button_pressed |= 1 << button;
    vout_window_ReportMousePressed(wnd, button);
}
