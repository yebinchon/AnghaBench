
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xcb_connection_t ;
struct TYPE_6__ {int x11; } ;
struct TYPE_7__ {TYPE_1__ display; TYPE_3__* sys; } ;
typedef TYPE_2__ vout_window_t ;
struct TYPE_8__ {int thread; int * conn; } ;
typedef TYPE_3__ vout_window_sys_t ;


 int DeinitKeyboardExtension (TYPE_2__*) ;
 int free (int ) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;
 int xcb_disconnect (int *) ;

__attribute__((used)) static void Close (vout_window_t *wnd)
{
    vout_window_sys_t *p_sys = wnd->sys;
    xcb_connection_t *conn = p_sys->conn;

    vlc_cancel (p_sys->thread);
    vlc_join (p_sys->thread, ((void*)0));

    DeinitKeyboardExtension(wnd);
    xcb_disconnect (conn);
    free (wnd->display.x11);
}
