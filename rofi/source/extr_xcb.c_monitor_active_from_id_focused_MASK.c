#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_window_t ;
struct TYPE_12__ {scalar_t__ dst_y; scalar_t__ dst_x; int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ y; scalar_t__ x; int /*<<< orphan*/  root; int /*<<< orphan*/  parent; } ;
typedef  TYPE_1__ xcb_translate_coordinates_reply_t ;
typedef  int /*<<< orphan*/  xcb_translate_coordinates_cookie_t ;
typedef  TYPE_1__ xcb_query_tree_reply_t ;
typedef  int /*<<< orphan*/  xcb_query_tree_cookie_t ;
typedef  int /*<<< orphan*/  xcb_get_property_cookie_t ;
typedef  TYPE_1__ xcb_get_geometry_reply_t ;
typedef  int /*<<< orphan*/  xcb_get_geometry_cookie_t ;
struct TYPE_13__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_4__ workarea ;
struct TYPE_14__ {int /*<<< orphan*/  connection; int /*<<< orphan*/  ewmh; int /*<<< orphan*/  screen_nbr; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,TYPE_4__*) ; 
 TYPE_8__* xcb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11 ( int mon_id, workarea *mon )
{
    int                       retv = FALSE;
    xcb_window_t              active_window;
    xcb_get_property_cookie_t awc;
    awc = FUNC3 ( &xcb->ewmh, xcb->screen_nbr );
    if ( !FUNC4 ( &xcb->ewmh, awc, &active_window, NULL ) ) {
        FUNC1 ( "Failed to get active window, falling back to mouse location (-5)." );
        return retv;
    }
    xcb_query_tree_cookie_t tree_cookie = FUNC7 ( xcb->connection, active_window );
    xcb_query_tree_reply_t  *tree_reply = FUNC8 ( xcb->connection, tree_cookie, NULL );
    if ( !tree_reply ) {
        FUNC1 ( "Failed to get parent window, falling back to mouse location (-5)." );
        return retv;
    }
    // get geometry.
    xcb_get_geometry_cookie_t c  = FUNC5 ( xcb->connection, active_window );
    xcb_get_geometry_reply_t  *r = FUNC6 ( xcb->connection, c, NULL );
    if ( !r ) {
        FUNC1 ( "Failed to get geometry of active window, falling back to mouse location (-5)." );
        FUNC0 ( tree_reply );
        return retv;
    }
    xcb_translate_coordinates_cookie_t ct = FUNC9 ( xcb->connection, tree_reply->parent, r->root, r->x, r->y );
    xcb_translate_coordinates_reply_t  *t = FUNC10 ( xcb->connection, ct, NULL );
    if ( t ) {
        if ( mon_id == -2 ) {
            // place the menu above the window
            // if some window is focused, place menu above window, else fall
            // back to selected monitor.
            mon->x = t->dst_x - r->x;
            mon->y = t->dst_y - r->y;
            mon->w = r->width;
            mon->h = r->height;
            retv   = TRUE;
        }
        else if ( mon_id == -4 ) {
            FUNC2 ( t->dst_x, t->dst_y, mon );
            retv = TRUE;
        }
        FUNC0 ( t );
    }
    else {
        FUNC1 ( "Failed to get translate position of active window, falling back to mouse location (-5)." );
    }
    FUNC0 ( r );
    FUNC0 ( tree_reply );
    return retv;
}