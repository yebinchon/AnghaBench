#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_window_t ;
struct TYPE_6__ {char* psz_title; int /*<<< orphan*/  hwnd; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ vout_window_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_VLC_CHANGE_TEXT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(vout_window_t *wnd, const char *title)
{
    vout_window_sys_t *sys = wnd->sys;
    char *psz_title = FUNC3( wnd, "video-title" );
    if( !psz_title )
        psz_title = FUNC2( title );
    if( !psz_title )
        return;

    FUNC4( &sys->lock );
    FUNC1( sys->psz_title );
    sys->psz_title = psz_title;
    FUNC5( &sys->lock );

    FUNC0( sys->hwnd, WM_VLC_CHANGE_TEXT, 0, 0 );
}