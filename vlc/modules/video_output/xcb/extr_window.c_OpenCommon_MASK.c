#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  void* xcb_window_t ;
typedef  int /*<<< orphan*/  xcb_intern_atom_cookie_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
typedef  void* xcb_atom_t ;
struct TYPE_15__ {char* x11; } ;
struct TYPE_14__ {void* xid; } ;
struct TYPE_17__ {TYPE_5__* sys; int /*<<< orphan*/ * ops; TYPE_2__ display; TYPE_1__ handle; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ vout_window_t ;
struct TYPE_16__ {int /*<<< orphan*/ * ctx; } ;
struct TYPE_18__ {int /*<<< orphan*/  thread; void* motif_wm_hints; void* wm_state_fullscreen; void* wm_state_below; void* wm_state_above; void* wm_state; TYPE_3__ xkb; void* root; int /*<<< orphan*/ * conn; } ;
typedef  TYPE_5__ vout_window_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  Thread ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 int /*<<< orphan*/  VOUT_WINDOW_TYPE_XID ; 
 int /*<<< orphan*/  XA_STRING ; 
 int /*<<< orphan*/  XA_WM_CLASS ; 
 void* XA_WM_ICON_NAME ; 
 void* XA_WM_NAME ; 
 int /*<<< orphan*/  XCB_PROP_MODE_REPLACE ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*,void*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*,void*,void*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC11 (TYPE_4__*,char*) ; 
 char* FUNC12 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC14 (int /*<<< orphan*/ ,int) ; 
 char* FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char*) ; 

__attribute__((used)) static int FUNC17(vout_window_t *wnd, char *display,
                      xcb_connection_t *conn,
                      xcb_window_t root, xcb_window_t window)
{
    vout_window_sys_t *sys = FUNC14(FUNC2(wnd), sizeof (*sys));
    if (sys == NULL)
        return VLC_ENOMEM;

    wnd->type = VOUT_WINDOW_TYPE_XID;
    wnd->handle.xid = window;
    wnd->display.x11 = display;
    wnd->ops = &ops;
    wnd->sys = sys;

    sys->conn = conn;
    sys->root = root;

#ifdef HAVE_XKBCOMMON
    if (var_InheritBool(wnd, "keyboard-events"))
        InitKeyboardExtension(wnd);
    else
        sys->xkb.ctx = NULL;
#endif

    /* ICCCM */
    /* No cut&paste nor drag&drop, only Window Manager communication. */
    FUNC7(conn, window, XA_WM_NAME,
    /* xgettext: This is a plain ASCII spelling of "VLC media player"
       for the ICCCM window name. This must be pure ASCII.
       The limitation is partially with ICCCM and partially with VLC.
       For Latin script languages, you may need to strip accents.
       For other scripts, you will need to transliterate into Latin. */
                   FUNC15("ASCII", "VLC media player"));

    FUNC7(conn, window, XA_WM_ICON_NAME,
    /* xgettext: This is a plain ASCII spelling of "VLC"
       for the ICCCM window name. This must be pure ASCII. */
                   FUNC15("ASCII", "VLC"));

    FUNC10(conn, window);
    FUNC16(conn, XCB_PROP_MODE_REPLACE, window, XA_WM_CLASS,
                        XA_STRING, 8, 8, "vlc\0Vlc");
    FUNC8(conn, window);

    /* EWMH */
    xcb_intern_atom_cookie_t utf8_string_ck =
        FUNC6(conn, "UTF8_STRING");
    xcb_intern_atom_cookie_t net_wm_name_ck =
        FUNC6(conn, "_NET_WM_NAME");
    xcb_intern_atom_cookie_t net_wm_icon_name_ck =
        FUNC6(conn, "_NET_WM_ICON_NAME");
    xcb_intern_atom_cookie_t wm_window_role_ck =
        FUNC6(conn, "WM_WINDOW_ROLE");
    xcb_intern_atom_cookie_t wm_state_ck =
        FUNC6(conn, "_NET_WM_STATE");
    xcb_intern_atom_cookie_t wm_state_above_ck =
        FUNC6(conn, "_NET_WM_STATE_ABOVE");
    xcb_intern_atom_cookie_t wm_state_below_ck =
        FUNC6(conn, "_NET_WM_STATE_BELOW");
    xcb_intern_atom_cookie_t wm_state_fs_ck =
        FUNC6(conn, "_NET_WM_STATE_FULLSCREEN");
    xcb_intern_atom_cookie_t motif_wm_hints_ck =
        FUNC6(conn, "_MOTIF_WM_HINTS");

    xcb_atom_t utf8 = FUNC5(conn, utf8_string_ck);
    xcb_atom_t net_wm_name = FUNC5(conn, net_wm_name_ck);
    char *title = FUNC12(wnd, "video-title");

    if (title != NULL)
    {
        FUNC9(conn, window, utf8, net_wm_name, title);
        FUNC4(title);
    }
    else
        FUNC9(conn, window, utf8, net_wm_name, FUNC3("VLC media player"));

    xcb_atom_t net_wm_icon_name = FUNC5(conn, net_wm_icon_name_ck);
    FUNC9(conn, window, utf8, net_wm_icon_name, FUNC3("VLC"));

    xcb_atom_t wm_window_role = FUNC5(conn, wm_window_role_ck);
    FUNC7(conn, window, wm_window_role, "vlc-video");

    /* Cache any EWMH atom we may need later */
    sys->wm_state = FUNC5(conn, wm_state_ck);
    sys->wm_state_above = FUNC5(conn, wm_state_above_ck);
    sys->wm_state_below = FUNC5(conn, wm_state_below_ck);
    sys->wm_state_fullscreen = FUNC5(conn, wm_state_fs_ck);
    sys->motif_wm_hints = FUNC5(conn, motif_wm_hints_ck);

    /* Create the event thread. It will dequeue all events, so any checked
     * request from this thread must be completed at this point. */
    if (FUNC13(&sys->thread, Thread, wnd, VLC_THREAD_PRIORITY_LOW))
    {
        FUNC0(wnd);
        return VLC_ENOMEM;
    }

    return VLC_SUCCESS;
}