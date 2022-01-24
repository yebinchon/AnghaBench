#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_9__ {int /*<<< orphan*/  edit_surf; int /*<<< orphan*/  edit_draw; int /*<<< orphan*/  edit_pixmap; int /*<<< orphan*/  main_window; } ;
struct TYPE_8__ {int /*<<< orphan*/  depth; } ;
struct TYPE_7__ {int /*<<< orphan*/  connection; } ;
struct TYPE_6__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  main_window; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ RofiViewState ;

/* Variables and functions */
 TYPE_5__ CacheState ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int XCB_CONFIG_WINDOW_HEIGHT ; 
 int XCB_CONFIG_WINDOW_WIDTH ; 
 int XCB_CONFIG_WINDOW_X ; 
 int XCB_CONFIG_WINDOW_Y ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* depth ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  visual ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* xcb ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11 ( RofiViewState * state )
{
    uint16_t mask   = XCB_CONFIG_WINDOW_X | XCB_CONFIG_WINDOW_Y | XCB_CONFIG_WINDOW_WIDTH | XCB_CONFIG_WINDOW_HEIGHT;
    uint32_t vals[] = { state->x, state->y, state->width, state->height };

    // Display it.
    FUNC7 ( xcb->connection, CacheState.main_window, mask, vals );
    FUNC2 ( CacheState.edit_draw );
    FUNC3 ( CacheState.edit_surf );

    FUNC9 ( xcb->connection, CacheState.edit_pixmap );
    CacheState.edit_pixmap = FUNC10 ( xcb->connection );
    FUNC8 ( xcb->connection, depth->depth,
                        CacheState.edit_pixmap, CacheState.main_window, state->width, state->height );

    CacheState.edit_surf = FUNC4 ( xcb->connection, CacheState.edit_pixmap, visual, state->width, state->height );
    CacheState.edit_draw = FUNC1 ( CacheState.edit_surf );

    FUNC5 ( "Re-size window based internal request: %dx%d.", state->width, state->height );
    // Should wrap main window in a widget.
    FUNC6 ( FUNC0 ( state->main_window ), state->width, state->height );
}