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
struct TYPE_15__ {int has_double_click; } ;
struct TYPE_14__ {int /*<<< orphan*/ * hwnd; } ;
struct TYPE_16__ {TYPE_2__ info; int /*<<< orphan*/ * ops; TYPE_1__ handle; int /*<<< orphan*/  type; TYPE_4__* sys; } ;
typedef  TYPE_3__ vout_window_t ;
struct TYPE_17__ {int is_cursor_hidden; int b_ready; int b_done; int /*<<< orphan*/ * hwnd; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  thread; scalar_t__ vlc_icon; int /*<<< orphan*/  cursor_arrow; int /*<<< orphan*/  class_main; int /*<<< orphan*/  cursor_empty; int /*<<< orphan*/  hide_timeout; scalar_t__ button_pressed; } ;
typedef  TYPE_4__ vout_window_sys_t ;
typedef  scalar_t__ WNDPROC ;
struct TYPE_18__ {int style; int /*<<< orphan*/  hCursor; int /*<<< orphan*/  lpszClassName; scalar_t__ hIcon; int /*<<< orphan*/  hInstance; scalar_t__ lpfnWndProc; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ WNDCLASS ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HINSTANCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CS_DBLCLKS ; 
 int CS_OWNDC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EventThread ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDC_ARROW ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 int /*<<< orphan*/  VOUT_WINDOW_TYPE_HWND ; 
 scalar_t__ WinVoutEventProc ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ops ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC22 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC23(vout_window_t *wnd)
{
    vout_window_sys_t *sys = FUNC22(FUNC11(wnd), 1, sizeof(vout_window_sys_t));
    if (FUNC14(sys == NULL))
        return VLC_ENOMEM;

    FUNC12( sys->class_main, FUNC0(sys->class_main),
               FUNC10("VLC standalone window %p"), (void *)sys );

    HINSTANCE hInstance = FUNC7(NULL);

    WCHAR app_path[MAX_PATH];
    if( FUNC6( NULL, app_path, MAX_PATH ) )
        sys->vlc_icon = FUNC4( hInstance, app_path    , 0 );

    sys->button_pressed = 0;
    sys->is_cursor_hidden = false;
    sys->hide_timeout = FUNC15( wnd, "mouse-hide-timeout" );
    sys->cursor_arrow = FUNC8(NULL, IDC_ARROW);
    sys->cursor_empty = FUNC3(hInstance);

    WNDCLASS wc = { 0 };
    /* Fill in the window class structure */
    wc.style         = CS_OWNDC|CS_DBLCLKS;           /* style: dbl click */
    wc.lpfnWndProc   = (WNDPROC)WinVoutEventProc;        /* event handler */
    wc.hInstance     = hInstance;                             /* instance */
    wc.hIcon         = sys->vlc_icon;            /* load the vlc big icon */
    wc.lpszClassName = sys->class_main;            /* use a special class */
    wc.hCursor       = sys->cursor_arrow;

    /* Register the window class */
    if( !FUNC9(&wc) )
    {
        if( sys->vlc_icon )
            FUNC2( sys->vlc_icon );

        FUNC13( wnd, "RegisterClass FAILED (err=%lu)", FUNC5() );
        return VLC_EGENERIC;
    }
    FUNC19( &sys->lock );
    FUNC17( &sys->wait );
    sys->b_ready = false;
    sys->b_done = false;

    wnd->sys = sys;
    if( FUNC16( &sys->thread, EventThread, wnd, VLC_THREAD_PRIORITY_LOW ) )
    {
        FUNC1(wnd);
        return VLC_EGENERIC;
    }

    FUNC20( &sys->lock );
    while( !sys->b_ready )
    {
        FUNC18( &sys->wait, &sys->lock );
    }
    if (sys->hwnd == NULL)
    {
        FUNC21( &sys->lock );
        FUNC1(wnd);
        return VLC_EGENERIC;
    }
    FUNC21( &sys->lock );

    wnd->sys = sys;
    wnd->type = VOUT_WINDOW_TYPE_HWND;
    wnd->handle.hwnd = sys->hwnd;
    wnd->ops = &ops;
    wnd->info.has_double_click = true;
    return VLC_SUCCESS;
}