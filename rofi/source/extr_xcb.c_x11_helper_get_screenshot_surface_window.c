
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_visualtype_t ;
struct TYPE_7__ {scalar_t__ map_state; double width; double height; int visual; } ;
typedef TYPE_1__ xcb_get_window_attributes_reply_t ;
typedef int xcb_get_window_attributes_cookie_t ;
typedef TYPE_1__ xcb_get_geometry_reply_t ;
typedef int xcb_get_geometry_cookie_t ;
typedef int cairo_t ;
typedef int cairo_surface_t ;
struct TYPE_8__ {int connection; int screen; } ;


 int CAIRO_FORMAT_ARGB32 ;
 scalar_t__ CAIRO_STATUS_SUCCESS ;
 int MAX (double,double) ;
 scalar_t__ XCB_MAP_STATE_VIEWABLE ;
 int * cairo_create (int *) ;
 int cairo_destroy (int *) ;
 int cairo_paint (int *) ;
 int cairo_scale (int *,double,double) ;
 int cairo_set_source_surface (int *,int *,int ,int ) ;
 int * cairo_surface_create_similar_image (int *,int ,double,double) ;
 int cairo_surface_destroy (int *) ;
 scalar_t__ cairo_surface_status (int *) ;
 int * cairo_xcb_surface_create (int ,int ,int *,double,double) ;
 int free (TYPE_1__*) ;
 int * lookup_visual (int ,int ) ;
 TYPE_5__* xcb ;
 int xcb_get_geometry (int ,int ) ;
 TYPE_1__* xcb_get_geometry_reply (int ,int ,int *) ;
 int xcb_get_window_attributes (int ,int ) ;
 TYPE_1__* xcb_get_window_attributes_reply (int ,int ,int *) ;

cairo_surface_t *x11_helper_get_screenshot_surface_window ( xcb_window_t window, int size )
{
    xcb_get_geometry_cookie_t cookie;
    xcb_get_geometry_reply_t *reply;

    cookie = xcb_get_geometry(xcb->connection, window);
    reply = xcb_get_geometry_reply(xcb->connection, cookie, ((void*)0));
    if ( reply == ((void*)0) ) {
        return ((void*)0);
    }

    xcb_get_window_attributes_cookie_t attributesCookie = xcb_get_window_attributes (xcb->connection, window);
    xcb_get_window_attributes_reply_t *attributes = xcb_get_window_attributes_reply (xcb->connection,
            attributesCookie,
            ((void*)0) );
    if ( attributes == ((void*)0) || ( attributes->map_state != XCB_MAP_STATE_VIEWABLE ) ) {
        free(reply);
        if ( attributes ) free(attributes);
        return ((void*)0);
    }

    xcb_visualtype_t * vt = lookup_visual(xcb->screen, attributes->visual);
    free ( attributes );

    cairo_surface_t *t = cairo_xcb_surface_create ( xcb->connection, window, vt , reply->width, reply->height );

    if ( cairo_surface_status ( t ) != CAIRO_STATUS_SUCCESS ) {
        cairo_surface_destroy(t);
        free(reply);
        return ((void*)0);
    }


    int max = MAX(reply->width, reply->height);
    double scale = (double)size/ max;

    cairo_surface_t *s2 = cairo_surface_create_similar_image ( t, CAIRO_FORMAT_ARGB32, reply->width*scale,reply->height*scale );
    free ( reply );

    if ( cairo_surface_status ( s2 ) != CAIRO_STATUS_SUCCESS ) {
        cairo_surface_destroy ( t ) ;
        return ((void*)0);
    }

    cairo_t *d = cairo_create (s2);
    cairo_scale ( d, scale, scale );
    cairo_set_source_surface ( d, t, 0, 0 );
    cairo_paint ( d);
    cairo_destroy(d);

    cairo_surface_destroy(t);
    return s2;
}
