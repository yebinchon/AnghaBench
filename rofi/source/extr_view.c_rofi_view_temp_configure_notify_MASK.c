#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ window; scalar_t__ x; scalar_t__ y; scalar_t__ width; scalar_t__ height; } ;
typedef  TYPE_1__ xcb_configure_notify_event_t ;
struct TYPE_12__ {scalar_t__ main_window; int /*<<< orphan*/  edit_surf; int /*<<< orphan*/  edit_draw; int /*<<< orphan*/  edit_pixmap; } ;
struct TYPE_11__ {int /*<<< orphan*/  depth; } ;
struct TYPE_10__ {int /*<<< orphan*/  connection; } ;
struct TYPE_9__ {scalar_t__ x; scalar_t__ y; scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  main_window; } ;
typedef  TYPE_2__ RofiViewState ;

/* Variables and functions */
 TYPE_7__ CacheState ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_6__* depth ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  visual ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_3__* xcb ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11 ( RofiViewState *state, xcb_configure_notify_event_t *xce )
{
    if ( xce->window == CacheState.main_window ) {
        if ( state->x != xce->x || state->y != xce->y ) {
            state->x = xce->x;
            state->y = xce->y;
            FUNC6 ( FUNC0 ( state->main_window ) );
        }
        if ( state->width != xce->width || state->height != xce->height ) {
            state->width  = xce->width;
            state->height = xce->height;

            FUNC2 ( CacheState.edit_draw );
            FUNC3 ( CacheState.edit_surf );

            FUNC9 ( xcb->connection, CacheState.edit_pixmap );
            CacheState.edit_pixmap = FUNC10 ( xcb->connection );
            FUNC8 ( xcb->connection, depth->depth, CacheState.edit_pixmap, CacheState.main_window,
                                state->width, state->height );

            CacheState.edit_surf = FUNC4 ( xcb->connection, CacheState.edit_pixmap, visual, state->width, state->height );
            CacheState.edit_draw = FUNC1 ( CacheState.edit_surf );
            FUNC5 ( "Re-size window based external request: %d %d", state->width, state->height );
            FUNC7 ( FUNC0 ( state->main_window ), state->width, state->height );
        }
    }
}