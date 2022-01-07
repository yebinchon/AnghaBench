
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int xcb_screen_t ;
struct TYPE_12__ {int root; } ;
typedef TYPE_3__ xcb_get_geometry_reply_t ;
typedef int xcb_connection_t ;
struct TYPE_11__ {int xid; } ;
struct TYPE_10__ {int x11; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_2__ handle; TYPE_1__ display; } ;
typedef TYPE_4__ vout_window_t ;
typedef int vout_display_t ;
struct TYPE_14__ {TYPE_4__* window; } ;
typedef TYPE_5__ vout_display_cfg_t ;


 int * Connect (int ,int ) ;
 int * FindScreen (int ,int *,int ) ;
 int VLC_OBJECT (int *) ;
 scalar_t__ VOUT_WINDOW_TYPE_XID ;
 int free (TYPE_3__*) ;
 int msg_Err (int *,char*) ;
 int xcb_disconnect (int *) ;
 int xcb_get_geometry (int *,int ) ;
 TYPE_3__* xcb_get_geometry_reply (int *,int ,int *) ;

vout_window_t *vlc_xcb_parent_Create(vout_display_t *vd,
                                     const vout_display_cfg_t *cfg,
                                     xcb_connection_t **restrict pconn,
                                     const xcb_screen_t **restrict pscreen)
{
    if (cfg->window->type != VOUT_WINDOW_TYPE_XID)
    {
        msg_Err (vd, "window not available");
        return ((void*)0);
    }
    vout_window_t *wnd = cfg->window;

    xcb_connection_t *conn = Connect (VLC_OBJECT(vd), wnd->display.x11);
    if (conn == ((void*)0))
        goto error;
    *pconn = conn;

    xcb_get_geometry_reply_t *geo =
        xcb_get_geometry_reply (conn, xcb_get_geometry (conn, wnd->handle.xid),
                                ((void*)0));
    if (geo == ((void*)0))
    {
        msg_Err (vd, "window not valid");
        goto error;
    }

    const xcb_screen_t *screen = FindScreen (VLC_OBJECT(vd), conn, geo->root);
    free (geo);
    if (screen == ((void*)0))
        goto error;
    *pscreen = screen;
    return wnd;

error:
    if (conn != ((void*)0))
        xcb_disconnect (conn);
    return ((void*)0);
}
