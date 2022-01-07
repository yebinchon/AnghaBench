
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_get_property_cookie_t ;
struct TYPE_13__ {unsigned int desktop_viewport_len; TYPE_2__* desktop_viewport; } ;
typedef TYPE_3__ xcb_ewmh_get_desktop_viewport_reply_t ;
struct TYPE_14__ {int x; int y; } ;
typedef TYPE_4__ workarea ;
struct TYPE_15__ {int ewmh; int screen_nbr; TYPE_1__* screen; } ;
struct TYPE_12__ {int x; int y; } ;
struct TYPE_11__ {int root; } ;


 int FALSE ;
 int TRUE ;
 int g_debug (char*,...) ;
 scalar_t__ monitor_active_from_id_focused (int,TYPE_4__*) ;
 int monitor_dimensions (int,int,TYPE_4__*) ;
 scalar_t__ pointer_get (int ,int*,int*) ;
 TYPE_7__* xcb ;
 int xcb_ewmh_get_current_desktop (int *,int ) ;
 scalar_t__ xcb_ewmh_get_current_desktop_reply (int *,int ,unsigned int*,int *) ;
 int xcb_ewmh_get_desktop_viewport (int *,int ) ;
 scalar_t__ xcb_ewmh_get_desktop_viewport_reply (int *,int ,TYPE_3__*,int *) ;
 int xcb_ewmh_get_desktop_viewport_reply_wipe (TYPE_3__*) ;

__attribute__((used)) static int monitor_active_from_id ( int mon_id, workarea *mon )
{
    xcb_window_t root = xcb->screen->root;
    int x, y;

    if ( mon_id == -3 ) {
        if ( pointer_get ( root, &x, &y ) ) {
            monitor_dimensions ( x, y, mon );
            mon->x = x;
            mon->y = y;
            return TRUE;
        }
    }

    else if ( mon_id == -1 ) {

        unsigned int current_desktop = 0;
        xcb_get_property_cookie_t gcdc;
        gcdc = xcb_ewmh_get_current_desktop ( &xcb->ewmh, xcb->screen_nbr );
        if ( xcb_ewmh_get_current_desktop_reply ( &xcb->ewmh, gcdc, &current_desktop, ((void*)0) ) ) {
            xcb_get_property_cookie_t c = xcb_ewmh_get_desktop_viewport ( &xcb->ewmh, xcb->screen_nbr );
            xcb_ewmh_get_desktop_viewport_reply_t vp;
            if ( xcb_ewmh_get_desktop_viewport_reply ( &xcb->ewmh, c, &vp, ((void*)0) ) ) {
                if ( current_desktop < vp.desktop_viewport_len ) {
                    monitor_dimensions ( vp.desktop_viewport[current_desktop].x,
                                         vp.desktop_viewport[current_desktop].y, mon );
                    xcb_ewmh_get_desktop_viewport_reply_wipe ( &vp );
                    return TRUE;
                }
                else {
                    g_debug ( "Viewport does not exist for current desktop: %d, falling back to mouse location (-5)", current_desktop );
                }
                xcb_ewmh_get_desktop_viewport_reply_wipe ( &vp );
            }
            else {
                g_debug ( "Failed to get viewport for current desktop: %d, falling back to mouse location (-5).", current_desktop );
            }
        }
        else {
            g_debug ( "Failed to get current desktop, falling back to mouse location (-5)." );
        }
    }
    else if ( mon_id == -2 || mon_id == -4 ) {
        if ( monitor_active_from_id_focused ( mon_id, mon ) ) {
            return TRUE;
        }
    }

    else if ( mon_id == -5 ) {
        if ( pointer_get ( root, &x, &y ) ) {
            monitor_dimensions ( x, y, mon );
            return TRUE;
        }

        return FALSE;
    }
    g_debug ( "Failed to find monitor, fall back to monitor showing mouse." );
    return monitor_active_from_id ( -5, mon );
}
