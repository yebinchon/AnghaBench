#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ idle_timeout; scalar_t__ repaint_source; scalar_t__ main_window; int /*<<< orphan*/  views; int /*<<< orphan*/  edit_pixmap; int /*<<< orphan*/  gc; int /*<<< orphan*/ * edit_surf; int /*<<< orphan*/ * edit_draw; int /*<<< orphan*/ * fake_bg; } ;
struct TYPE_3__ {int /*<<< orphan*/  connection; } ;

/* Variables and functions */
 TYPE_2__ CacheState ; 
 scalar_t__ XCB_COLORMAP_NONE ; 
 scalar_t__ XCB_WINDOW_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ map ; 
 TYPE_1__* xcb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC12 ()
{
    FUNC3 ( "Cleanup." );
    if ( CacheState.idle_timeout > 0 ) {
        FUNC5 ( CacheState.idle_timeout );
        CacheState.idle_timeout = 0;
    }
    if ( CacheState.repaint_source > 0 ) {
        FUNC5 ( CacheState.repaint_source );
        CacheState.repaint_source = 0;
    }
    if ( CacheState.fake_bg ) {
        FUNC1 ( CacheState.fake_bg );
        CacheState.fake_bg = NULL;
    }
    if ( CacheState.edit_draw ) {
        FUNC0 ( CacheState.edit_draw );
        CacheState.edit_draw = NULL;
    }
    if ( CacheState.edit_surf ) {
        FUNC1 ( CacheState.edit_surf );
        CacheState.edit_surf = NULL;
    }
    if ( CacheState.main_window != XCB_WINDOW_NONE ) {
        FUNC3 ( "Unmapping and free'ing window" );
        FUNC11 ( xcb->connection, CacheState.main_window );
        FUNC9 ( xcb->connection, CacheState.gc );
        FUNC10 ( xcb->connection, CacheState.edit_pixmap );
        FUNC6 ( xcb->connection, CacheState.main_window );
        CacheState.main_window = XCB_WINDOW_NONE;
    }
    if ( map != XCB_COLORMAP_NONE ) {
        FUNC8 ( xcb->connection, map );
        map = XCB_COLORMAP_NONE;
    }
    FUNC7 ( xcb->connection );
    FUNC2 ( FUNC4 ( &( CacheState.views ) ) );
}