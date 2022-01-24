#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_window_t ;
typedef  int /*<<< orphan*/  xcb_visualtype_t ;
struct TYPE_7__ {scalar_t__ map_state; double width; double height; int /*<<< orphan*/  visual; } ;
typedef  TYPE_1__ xcb_get_window_attributes_reply_t ;
typedef  int /*<<< orphan*/  xcb_get_window_attributes_cookie_t ;
typedef  TYPE_1__ xcb_get_geometry_reply_t ;
typedef  int /*<<< orphan*/  xcb_get_geometry_cookie_t ;
typedef  int /*<<< orphan*/  cairo_t ;
typedef  int /*<<< orphan*/  cairo_surface_t ;
struct TYPE_8__ {int /*<<< orphan*/  connection; int /*<<< orphan*/  screen; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_FORMAT_ARGB32 ; 
 scalar_t__ CAIRO_STATUS_SUCCESS ; 
 int FUNC0 (double,double) ; 
 scalar_t__ XCB_MAP_STATE_VIEWABLE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* xcb ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

cairo_surface_t *FUNC16 ( xcb_window_t window, int size )
{
    xcb_get_geometry_cookie_t cookie;
    xcb_get_geometry_reply_t *reply;

    cookie = FUNC12(xcb->connection, window);
    reply = FUNC13(xcb->connection, cookie, NULL);
    if ( reply == NULL ) {
        return NULL;
    }

    xcb_get_window_attributes_cookie_t  attributesCookie = FUNC14 (xcb->connection, window);
    xcb_get_window_attributes_reply_t  *attributes       = FUNC15 (xcb->connection,
            attributesCookie,
            NULL );
    if ( attributes == NULL ||  ( attributes->map_state != XCB_MAP_STATE_VIEWABLE ) ) {
        FUNC10(reply);
        if ( attributes ) FUNC10(attributes);
        return NULL;
    }
    // Create a cairo surface for the window.
    xcb_visualtype_t * vt = FUNC11(xcb->screen, attributes->visual);
    FUNC10 ( attributes );

    cairo_surface_t *t = FUNC9 ( xcb->connection, window, vt , reply->width, reply->height );

    if ( FUNC8 ( t ) != CAIRO_STATUS_SUCCESS ) {
        FUNC7(t);
        FUNC10(reply);
        return NULL;
    }

    // Scale the image, as we don't want to keep large one around.
    int max = FUNC0(reply->width, reply->height);
    double scale = (double)size/ max;

    cairo_surface_t *s2 = FUNC6 ( t, CAIRO_FORMAT_ARGB32, reply->width*scale,reply->height*scale );
    FUNC10 ( reply );

    if ( FUNC8 ( s2 ) != CAIRO_STATUS_SUCCESS ) {
        FUNC7 ( t ) ;
        return NULL;
    }
    // Paint it in.
    cairo_t *d = FUNC1 (s2);
    FUNC4 ( d, scale, scale );
    FUNC5 ( d, t, 0, 0 );
    FUNC3 ( d);
    FUNC2(d);

    FUNC7(t);
    return s2;
}