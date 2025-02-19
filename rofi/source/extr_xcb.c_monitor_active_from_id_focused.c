
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int xcb_window_t ;
struct TYPE_12__ {scalar_t__ dst_y; scalar_t__ dst_x; int height; int width; scalar_t__ y; scalar_t__ x; int root; int parent; } ;
typedef TYPE_1__ xcb_translate_coordinates_reply_t ;
typedef int xcb_translate_coordinates_cookie_t ;
typedef TYPE_1__ xcb_query_tree_reply_t ;
typedef int xcb_query_tree_cookie_t ;
typedef int xcb_get_property_cookie_t ;
typedef TYPE_1__ xcb_get_geometry_reply_t ;
typedef int xcb_get_geometry_cookie_t ;
struct TYPE_13__ {int h; int w; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_4__ workarea ;
struct TYPE_14__ {int connection; int ewmh; int screen_nbr; } ;


 int FALSE ;
 int TRUE ;
 int free (TYPE_1__*) ;
 int g_debug (char*) ;
 int monitor_dimensions (scalar_t__,scalar_t__,TYPE_4__*) ;
 TYPE_8__* xcb ;
 int xcb_ewmh_get_active_window (int *,int ) ;
 int xcb_ewmh_get_active_window_reply (int *,int ,int *,int *) ;
 int xcb_get_geometry (int ,int ) ;
 TYPE_1__* xcb_get_geometry_reply (int ,int ,int *) ;
 int xcb_query_tree (int ,int ) ;
 TYPE_1__* xcb_query_tree_reply (int ,int ,int *) ;
 int xcb_translate_coordinates (int ,int ,int ,scalar_t__,scalar_t__) ;
 TYPE_1__* xcb_translate_coordinates_reply (int ,int ,int *) ;

__attribute__((used)) static int monitor_active_from_id_focused ( int mon_id, workarea *mon )
{
    int retv = FALSE;
    xcb_window_t active_window;
    xcb_get_property_cookie_t awc;
    awc = xcb_ewmh_get_active_window ( &xcb->ewmh, xcb->screen_nbr );
    if ( !xcb_ewmh_get_active_window_reply ( &xcb->ewmh, awc, &active_window, ((void*)0) ) ) {
        g_debug ( "Failed to get active window, falling back to mouse location (-5)." );
        return retv;
    }
    xcb_query_tree_cookie_t tree_cookie = xcb_query_tree ( xcb->connection, active_window );
    xcb_query_tree_reply_t *tree_reply = xcb_query_tree_reply ( xcb->connection, tree_cookie, ((void*)0) );
    if ( !tree_reply ) {
        g_debug ( "Failed to get parent window, falling back to mouse location (-5)." );
        return retv;
    }

    xcb_get_geometry_cookie_t c = xcb_get_geometry ( xcb->connection, active_window );
    xcb_get_geometry_reply_t *r = xcb_get_geometry_reply ( xcb->connection, c, ((void*)0) );
    if ( !r ) {
        g_debug ( "Failed to get geometry of active window, falling back to mouse location (-5)." );
        free ( tree_reply );
        return retv;
    }
    xcb_translate_coordinates_cookie_t ct = xcb_translate_coordinates ( xcb->connection, tree_reply->parent, r->root, r->x, r->y );
    xcb_translate_coordinates_reply_t *t = xcb_translate_coordinates_reply ( xcb->connection, ct, ((void*)0) );
    if ( t ) {
        if ( mon_id == -2 ) {



            mon->x = t->dst_x - r->x;
            mon->y = t->dst_y - r->y;
            mon->w = r->width;
            mon->h = r->height;
            retv = TRUE;
        }
        else if ( mon_id == -4 ) {
            monitor_dimensions ( t->dst_x, t->dst_y, mon );
            retv = TRUE;
        }
        free ( t );
    }
    else {
        g_debug ( "Failed to get translate position of active window, falling back to mouse location (-5)." );
    }
    free ( r );
    free ( tree_reply );
    return retv;
}
