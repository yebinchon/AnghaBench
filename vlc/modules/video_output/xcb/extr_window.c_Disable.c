
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xcb_connection_t ;
struct TYPE_5__ {int xid; } ;
struct TYPE_6__ {TYPE_1__ handle; TYPE_3__* sys; } ;
typedef TYPE_2__ vout_window_t ;
struct TYPE_7__ {int * conn; } ;
typedef TYPE_3__ vout_window_sys_t ;


 int xcb_flush (int *) ;
 int xcb_unmap_window (int *,int ) ;

__attribute__((used)) static void Disable(vout_window_t *wnd)
{
    vout_window_sys_t *sys = wnd->sys;
    xcb_connection_t *conn = sys->conn;

    xcb_unmap_window(conn, wnd->handle.xid);
    xcb_flush(conn);
}
