#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_void_cookie_t ;
struct TYPE_16__ {int bits_per_rgb_value; scalar_t__ _class; scalar_t__ visual_id; } ;
typedef  TYPE_1__ xcb_visualtype_t ;
struct TYPE_17__ {TYPE_1__* data; scalar_t__ rem; } ;
typedef  TYPE_2__ xcb_visualtype_iterator_t ;
typedef  int /*<<< orphan*/  xcb_generic_error_t ;
struct TYPE_18__ {int depth; } ;
typedef  TYPE_3__ xcb_depth_t ;
struct TYPE_19__ {TYPE_3__* data; scalar_t__ rem; } ;
typedef  TYPE_4__ xcb_depth_iterator_t ;
struct TYPE_20__ {scalar_t__ root_visual; int /*<<< orphan*/  default_colormap; int /*<<< orphan*/  root; } ;
struct TYPE_15__ {TYPE_7__* screen; int /*<<< orphan*/  connection; } ;

/* Variables and functions */
 int /*<<< orphan*/  XCB_COLORMAP_ALLOC_NONE ; 
 scalar_t__ XCB_VISUAL_CLASS_TRUE_COLOR ; 
 TYPE_3__* depth ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  map ; 
 TYPE_1__* root_visual ; 
 TYPE_1__* visual ; 
 TYPE_11__* xcb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 TYPE_2__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC8 ( void )
{
    xcb_depth_t          *root_depth = NULL;
    xcb_depth_iterator_t depth_iter;
    for ( depth_iter = FUNC6 ( xcb->screen ); depth_iter.rem; FUNC2 ( &depth_iter ) ) {
        xcb_depth_t               *d = depth_iter.data;

        xcb_visualtype_iterator_t visual_iter;
        for ( visual_iter = FUNC3 ( d ); visual_iter.rem; FUNC7 ( &visual_iter ) ) {
            xcb_visualtype_t *v = visual_iter.data;
            if ( ( v->bits_per_rgb_value == 8 ) && ( d->depth == 32 ) && ( v->_class == XCB_VISUAL_CLASS_TRUE_COLOR ) ) {
                depth  = d;
                visual = v;
            }
            if ( xcb->screen->root_visual == v->visual_id ) {
                root_depth  = d;
                root_visual = v;
            }
        }
    }
    if ( visual != NULL ) {
        xcb_void_cookie_t   c;
        xcb_generic_error_t *e;
        map = FUNC4 ( xcb->connection );
        c   = FUNC1 ( xcb->connection, XCB_COLORMAP_ALLOC_NONE, map, xcb->screen->root, visual->visual_id );
        e   = FUNC5 ( xcb->connection, c );
        if ( e ) {
            depth  = NULL;
            visual = NULL;
            FUNC0 ( e );
        }
    }

    if ( visual == NULL ) {
        depth  = root_depth;
        visual = root_visual;
        map    = xcb->screen->default_colormap;
    }
}