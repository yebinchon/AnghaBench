#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_window_t ;
struct TYPE_11__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ y; scalar_t__ dst_y; scalar_t__ x; scalar_t__ dst_x; } ;
typedef  TYPE_2__ xcb_translate_coordinates_reply_t ;
typedef  int /*<<< orphan*/  xcb_translate_coordinates_cookie_t ;
typedef  TYPE_2__ xcb_get_geometry_reply_t ;
typedef  int /*<<< orphan*/  xcb_get_geometry_cookie_t ;
typedef  int /*<<< orphan*/  xcb_drawable_t ;
struct TYPE_12__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_4__ workarea ;
struct TYPE_13__ {int /*<<< orphan*/  connection; TYPE_1__* screen; } ;
struct TYPE_10__ {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_7__* xcb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5 ( xcb_drawable_t id, workarea *mon )
{
    xcb_window_t              root = xcb->screen->root;
    xcb_get_geometry_cookie_t c    = FUNC1 ( xcb->connection, id );
    xcb_get_geometry_reply_t  *r   = FUNC2 ( xcb->connection, c, NULL );
    if ( r ) {
        xcb_translate_coordinates_cookie_t ct = FUNC3 ( xcb->connection, id, root, r->x, r->y );
        xcb_translate_coordinates_reply_t  *t = FUNC4 ( xcb->connection, ct, NULL );
        if ( t ) {
            // place the menu above the window
            // if some window is focused, place menu above window, else fall
            // back to selected monitor.
            mon->x = t->dst_x - r->x;
            mon->y = t->dst_y - r->y;
            mon->w = r->width;
            mon->h = r->height;
            FUNC0 ( r );
            FUNC0 ( t );
            return TRUE;
        }
        FUNC0 ( r );
    }
    return FALSE;
}