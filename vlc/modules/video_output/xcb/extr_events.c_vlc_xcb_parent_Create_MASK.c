#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_screen_t ;
struct TYPE_12__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_3__ xcb_get_geometry_reply_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
struct TYPE_11__ {int /*<<< orphan*/  xid; } ;
struct TYPE_10__ {int /*<<< orphan*/  x11; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_2__ handle; TYPE_1__ display; } ;
typedef  TYPE_4__ vout_window_t ;
typedef  int /*<<< orphan*/  vout_display_t ;
struct TYPE_14__ {TYPE_4__* window; } ;
typedef  TYPE_5__ vout_display_cfg_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ VOUT_WINDOW_TYPE_XID ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

vout_window_t *FUNC8(vout_display_t *vd,
                                     const vout_display_cfg_t *cfg,
                                     xcb_connection_t **restrict pconn,
                                     const xcb_screen_t **restrict pscreen)
{
    if (cfg->window->type != VOUT_WINDOW_TYPE_XID)
    {
        FUNC4 (vd, "window not available");
        return NULL;
    }
    vout_window_t *wnd = cfg->window;

    xcb_connection_t *conn = FUNC0 (FUNC2(vd), wnd->display.x11);
    if (conn == NULL)
        goto error;
    *pconn = conn;

    xcb_get_geometry_reply_t *geo =
        FUNC7 (conn, FUNC6 (conn, wnd->handle.xid),
                                NULL);
    if (geo == NULL)
    {
        FUNC4 (vd, "window not valid");
        goto error;
    }

    const xcb_screen_t *screen = FUNC1 (FUNC2(vd), conn, geo->root);
    FUNC3 (geo);
    if (screen == NULL)
        goto error;
    *pscreen = screen;
    return wnd;

error:
    if (conn != NULL)
        FUNC5 (conn);
    return NULL;
}